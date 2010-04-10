gdal_translate ps_height_16k.png ps_height_16k.tif
gdaladdo -r average ps_height_16k.tif 2 4 8 16 32

gdal_translate ps_texture_16k.png ps_texture_16k.tif
gdaladdo -r average ps_texture_16k.tif 2 4 8 16 32

osgdem --xx 10 --yy 10 -t ps_texture_16k.tif --xx 10 --yy 10 -d ps_height_16k.tif -l 2 -v 0.1 -o puget.ive -a pegout.osga
#osgdem --xx 10 --yy 10 -t ps_texture_16k.tif --xx 10 --yy 10 -d ps_height_16k.tif -l 2 -v 0.1 -o puget.ive -a pegout.osga