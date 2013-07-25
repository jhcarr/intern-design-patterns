package com.puppetlabs.designpatterns;

import java.util.*;

/**
 *
 * @author briancain
 *
 */
public class Main {
  public static void main(String[] args){
    System.out.println("#############################");
    System.out.println("##File Compression Tool 1.0##");
    System.out.println("#############################");

    if (args.length <= 1){
      System.out.println("Not enough arguments. (ie: java Main --zip hello.txt");
      System.exit(1);
    }

    CompressionContext ctx = new CompressionContext();

    List<String> argList = new ArrayList<String>();
    for(String arg : args){
      argList.add(arg);
    }

    String compressionType = argList.get(0);
    argList.remove(0);

    System.out.println("\nReceived files....");
    List<String> fileList = new ArrayList<String>();
    for(String arg : argList){
      System.out.println(arg);
      fileList.add(arg);
    }
    System.out.println();
    // APIDeveloperGzip(fileList);

    if (compressionType.equals("--zip")){
      ctx.setCompressionStrategy(new Zip());
    }
    else if(compressionType.equals("--rar")){
      ctx.setCompressionStrategy(new Rar());
    }
    else if(compressionType.equals("--gzip")){
      ctx.setCompressionStrategy(new Gzip());
    }
    else {
      System.out.println("Please pick a compression type (ie: java Main --zip hello.txt");
    }

    ctx.createArchive(fileList);
  }

  public static void APIDeveloperGzip(List<String> fileList){
    CompressionContext compression = new CompressionContext();
    compression.setCompressionStrategy(new Gzip());

    compression.createArchive(fileList);
    System.exit(0);
  }
}
