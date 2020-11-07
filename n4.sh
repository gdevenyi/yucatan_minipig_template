for file in */reorient.nii.gz; do
  ThresholdImage 3 $file $(dirname $file)/otsu.nii.gz Otsu 4
  ThresholdImage 3 $(dirname $file)/otsu.nii.gz $(dirname $file)/otsu.nii.gz 1 Inf 1 0
  ImageMath 3 $(dirname $file)/otsu.nii.gz GetLargestComponent $(dirname $file)/otsu.nii.gz
  N4BiasFieldCorrection -d 3 -s 4 -b [ 200 ] -c [ 50x50x50x50,0.0 ] -w $(dirname $file)/otsu.nii.gz -i $file \
    -o $(dirname $file)/$(dirname $file)_n4.nii.gz --verbose

  ThresholdImage 3 $(dirname $file)/$(dirname $file)_n4.nii.gz $(dirname $file)/otsu.nii.gz Otsu 4
  ThresholdImage 3 $(dirname $file)/otsu.nii.gz $(dirname $file)/otsu.nii.gz 1 Inf 1 0
  ImageMath 3 $(dirname $file)/otsu.nii.gz GetLargestComponent $(dirname $file)/otsu.nii.gz
  N4BiasFieldCorrection -d 3 -s 2 -b [ 200 ] -c [ 50x50x50x50,0.0 ] -w $(dirname $file)/otsu.nii.gz -i $file \
    -o $(dirname $file)/$(dirname $file)_n4.nii.gz --verbose
done
