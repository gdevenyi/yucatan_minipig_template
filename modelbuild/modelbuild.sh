#Registration levels generated by
#ants_generate_iterations.py --min 1 --max 296 --output modelbuild

antsMultivariateTemplateConstruction2.sh -d 3 -r 0 -n 0 -z ../model-staging/initial_recrop.nii.gz \
-o rigid_ \
-q 500x500x500x500x500x500x500x500x500x500x500x500x500x500x500x500x500x500x225x75x0 \
-f 9x9x9x9x9x9x9x9x9x9x9x9x9x8x7x6x5x4x3x2x1 \
-s 8.90776219086x8.48259483674x8.05737406603x7.63209095045x7.20673445272x6.78129076418x6.35574237559x5.93006674681x5.50423435717x5.07820577132x4.65192708599x4.22532260674x3.79828256043x3.37064139994x2.94213702015x2.51232776601x2.08040503813x1.64470459404x1.20112240879x0.735534255037x0.0mm \
-m MI -t Rigid \
../*/*n4.nii.gz

cp rigid_template0.nii.gz ../model-staging

antsMultivariateTemplateConstruction2.sh -d 3 -r 0 -n 0 -z ../model-staging/rigid_template0.nii.gz \
-o affine_ \
-q 500x500x500x500x500x500x500x500x500x500x500x500x500x500x500x500x500x500x225x75x0 \
-f 9x9x9x9x9x9x9x9x9x9x9x9x9x8x7x6x5x4x3x2x1 \
-s 8.90776219086x8.48259483674x8.05737406603x7.63209095045x7.20673445272x6.78129076418x6.35574237559x5.93006674681x5.50423435717x5.07820577132x4.65192708599x4.22532260674x3.79828256043x3.37064139994x2.94213702015x2.51232776601x2.08040503813x1.64470459404x1.20112240879x0.735534255037x0.0mm \
-m MI -t Affine \
../*/*n4.nii.gz

cp affine_template0.nii.gz ../model-staging

antsMultivariateTemplateConstruction2.sh -d 3 -r 0 -n 0 -z ../model-staging/affine_template0.nii.gz \
-o nlin_ \
-q 500x500x500x500x500x500x500x500x500x500x500x500x500x500x500x500x500x500x225x75x25 \
-f 9x9x9x9x9x9x9x9x9x9x9x9x9x8x7x6x5x4x3x2x1 \
-s 8.90776219086x8.48259483674x8.05737406603x7.63209095045x7.20673445272x6.78129076418x6.35574237559x5.93006674681x5.50423435717x5.07820577132x4.65192708599x4.22532260674x3.79828256043x3.37064139994x2.94213702015x2.51232776601x2.08040503813x1.64470459404x1.20112240879x0.735534255037x0.0mm \
../*/*n4.nii.gz
