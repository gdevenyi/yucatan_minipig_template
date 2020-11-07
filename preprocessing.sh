./flip.sh
./n4.sh
./make-dumb-average.sh initial.nii.gz */*n4.nii.gz
ImageMath 3 initial.nii.gz PadImage initial.nii.gz 50
ThresholdImage 3 initial.nii.gz otsu.nii.gz Otsu 4
ThresholdImage 3 otsu.nii.gz otsu.nii.gz 1 Inf 1 0
ImageMath 3 otsu.nii.gz GetLargestComponent otsu.nii.gz
ExtractRegionFromImageByMask 3 initial.nii.gz initial_recrop.nii.gz otsu.nii.gz 1 20
cp initial_recrop.nii.gz model-staging/
