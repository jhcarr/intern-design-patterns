package com.puppetlabs.designpatterns;

import java.util.*;

/**
 *
 * @author briancain
 *
 */
public class Gzip implements Compression {

  public void compressFiles(List<String> files){
    System.out.println("User has chosen gzip format.");
    for (String file : files){
      System.out.println("Compressing file " + file + "...");
    }
    System.out.println("Files saved in archive.gzip");
  }

}
