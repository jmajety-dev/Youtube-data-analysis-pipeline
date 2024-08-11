#### Upload the raw json unprocessed data to the S3 bucket

aws s3 cp CA_category_id.json s3://de-youtube-raw-useast1-dev-98/youtube/raw_statistics_reference_data/
aws s3 cp DE_category_id.json s3://de-youtube-raw-useast1-dev-98/youtube/raw_statistics_reference_data/
aws s3 cp FR_category_id.json s3://de-youtube-raw-useast1-dev-98/youtube/raw_statistics_reference_data/
aws s3 cp GB_category_id.json s3://de-youtube-raw-useast1-dev-98/youtube/raw_statistics_reference_data/
aws s3 cp IN_category_id.json s3://de-youtube-raw-useast1-dev-98/youtube/raw_statistics_reference_data/
aws s3 cp JP_category_id.json s3://de-youtube-raw-useast1-dev-98/youtube/raw_statistics_reference_data/
aws s3 cp KR_category_id.json s3://de-youtube-raw-useast1-dev-98/youtube/raw_statistics_reference_data/
aws s3 cp MX_category_id.json s3://de-youtube-raw-useast1-dev-98/youtube/raw_statistics_reference_data/
aws s3 cp RU_category_id.json s3://de-youtube-raw-useast1-dev-98/youtube/raw_statistics_reference_data/
aws s3 cp US_category_id.json s3://de-youtube-raw-useast1-dev-98/youtube/raw_statistics_reference_data/

### Upload the partial cleaned raw csv data to the S3 bucket
aws s3 cp CAvideos.js s3://de-youtube-raw-useast1-dev-98/youtube/raw_statistics/region=ca/       
aws s3 cp DEvideos.csv s3://de-youtube-raw-useast1-dev-98/youtube/raw_statistics/region=de/       
aws s3 cp FRvideos.csv s3://de-youtube-raw-useast1-dev-98/youtube/raw_statistics/region=fr/
aws s3 cp GBvideos.csv s3://de-youtube-raw-useast1-dev-98/youtube/raw_statistics/region=gb/
aws s3 cp INvideos.csv s3://de-youtube-raw-useast1-dev-98/youtube/raw_statistics/region=in/
aws s3 cp JPvideos.csv s3://de-youtube-raw-useast1-dev-98/youtube/raw_statistics/region=jp/
aws s3 cp KRvideos.csv s3://de-youtube-raw-useast1-dev-98/youtube/raw_statistics/region=kr/
aws s3 cp MXvideos.csv s3://de-youtube-raw-useast1-dev-98/youtube/raw_statistics/region=mx/
aws s3 cp RUvideos.csv s3://de-youtube-raw-useast1-dev-98/youtube/raw_statistics/region=ru/
aws s3 cp USvideos.csv s3://de-youtube-raw-useast1-dev-98/youtube/raw_statistics/region=us/