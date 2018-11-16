Tidy data :)

1) select (df, col1, col2)
  get columns
  
2) filter(df, height >= 190cm)
  get rows
  
3) mutate(df, rate=cases/population)

4) group_by(df, cases/pop)
-attach a label to all the things you group by
-summariza afterwards will take the mean of whatever things are have group_by tags

5) summarize(df, avg = mean(cases))

gather --> make longer
spread --> make wider

this is a useful link for wrangling data https://www.rstudio.com/wp-content/uploads/2015/02/data-wrangling-cheatsheet.pdf

