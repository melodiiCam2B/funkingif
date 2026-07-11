package gifs.util;

/**
 * Version of Gif file.  
 * The only 2 official versions is GIF87a and GIF89a. Any other version is supposed as GIF89a.
 */
enum Versions {
  /**
   * First version of Gif file format from year 1987.
   */
  GIF87a;
  
  /**
   * Second and actual version of Gif file format from year 1989.
   */
  GIF89a;  
}