package com.puppetlabs.designpatterns;

import java.util.*;

/**
 *
 * @author
 *
 */
public class CompressionContext {

  private Compression strategy;

  public void setCompressionStrategy(Compression strategy){
    this.strategy = strategy;
  }

  public void createArchive(List<String> files){
    strategy.compressFiles(files);
  }

}
