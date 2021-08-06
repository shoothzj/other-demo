date <- c("2021-03-21 14:00:01", "2021-03-21 14:00:05", "2021-03-21 14:00:04", "2021-03-21 14:00:08")

value <- c(1,2,4,8)


date_format = as.POSIXct(date, format="%Y-%m-%d %H:%M:%OS", tz = "UTC", origin="1970-01-01 00:00:00")
date_format_sort <- sort(as.POSIXlt(date_format))
print(date_format)
print(value)
plot(date_format_sort, value, xaxt="n")
axis.POSIXct(1, date_format_sort, format="%Y-%m-%d %H:%M:%OS")