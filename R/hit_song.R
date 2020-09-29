#' Hit song generator
#'
#' This function allows you to generate a guaranteed #1 hit with no effort!
#' @param v numeric. Number of lines in the verse.
#' @param c numeric. Number of lines in the chorus.
#' @param b numeric. Number of lines in the bridge.
#' @export hit_song
hit_song <- function(v = 4, c = 4, b = 4){
  lyrics <- tayonce::lyrics
  verse <- sample(lyrics$line, v)
  chorus <- sample(lyrics$line, c)
  bridge <- sample(lyrics$line, b)
  song <- c(paste(verse, collapse = "\n"), "\n","\n",
            paste(chorus, collapse = "\n"), "\n", "\n",
            paste(bridge, collapse = "\n"), "\n", "\n",
            paste(chorus, collapse = "\n"))
  return(cat(song))
}
