package com.puppetlabs.designpatterns;

import java.util.*;

/**
 *
 * @author briancain
 *
 */
public class Rar implements Compression{

  public void compressFiles(List<String> files){
    System.out.println("User has chosen rar format.");
    for (String file : files){
      System.out.println("Compressing file " + file + "...");
    }
    System.out.println("Files saved in archive.rar");
  }
}
