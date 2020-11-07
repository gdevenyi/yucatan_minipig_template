for file in */t1.nii.gz; do
  echo "nii2mnc $file $(dirname $file)/$(basename $file .nii.gz).mnc && \
  volmash -swap yz $(dirname $file)/$(basename $file .nii.gz).mnc $(dirname $file)/swap.mnc && \
  volflip -z $(dirname $file)/swap.mnc $(dirname $file)/flip.mnc && \
  mnc2nii $(dirname $file)/flip.mnc $(dirname $file)/reorient.nii && \
  pigz $(dirname $file)/reorient.nii && rm $(dirname $file)/*mnc"
done
