set -e
# Get a carriage return into `cr`
cr=`echo $'\n.'`
cr=${cr%.}

echo ""
read -p "Did you install the required dependencies? [y/n] $cr > " dependencies

if [ "$dependencies" != "y" ]; then
  echo "Error: Requires dependencies: tensorflow, opencv2 (python), scipy"
  exit 1;
fi


# Parse arguments

echo "Rendering stylized image. This may take a while..."

python neural_style.py --content_img butterfly.jpg --style_imgs kandinsky.jpg --img_name butterfly7 --verbose;
python neural_style.py --style_mask --style_mask_imgs blank_mask.jpg --content_img butterfly.jpg --style_imgs eye.jpg --img_name butterfly6 --verbose;
python neural_style.py --content_img butterfly.jpg --style_imgs moon_and_tree.jpg --img_name butterfly1 --verbose;
python neural_style.py --content_img butterfly.jpg --style_imgs chinese_mountain.jpg --img_name butterfly2 --verbose;
python neural_style.py --content_img butterfly.jpg --style_imgs cold.jpg --img_name butterfly4 --verbose;
python neural_style.py --content_img butterfly.jpg --style_imgs wave.png --img_name butterfly3 --verbose;
python neural_style.py --content_img butterfly.jpg --style_imgs very_warm.jpg --img_name butterfly5 --verbose;


python neural_style.py --content_img blank.jpg --style_mask --style_mask_imgs blank_mask.jpg --style_imgs abstract1.jpg --img_name egg1 --verbose;
python neural_style.py --content_img blank.jpg --style_mask --style_mask_imgs blank_mask.jpg --style_imgs monet2.jpg --img_name egg8 --verbose;
python neural_style.py --content_img blank.jpg --style_mask --style_mask_imgs blank_mask.jpg --style_imgs warm_girl.jpg --img_name egg9 --verbose;
python neural_style.py --content_img blank.jpg --style_mask --style_mask_imgs blank_mask.jpg --style_imgs very_warm.jpg --img_name egg3 --verbose;
python neural_style.py --content_img blank.jpg --style_mask --style_mask_imgs blank_mask.jpg --style_imgs wave.png --img_name egg2 --verbose;
python neural_style.py --content_img blank.jpg --style_mask --style_mask_imgs blank_mask.jpg --style_imgs moon_and_tree.jpg --img_name egg5 --verbose;
python neural_style.py --content_img blank.jpg --style_mask --style_mask_imgs blank_mask.jpg --style_imgs chinese_mountain.jpg --img_name egg6 --verbose;
python neural_style.py --content_img blank.jpg --style_mask --style_mask_imgs blank_mask.jpg --style_imgs abstract3.jpg --img_name egg4 --verbose;
python neural_style.py --content_img blank.jpg --style_mask --style_mask_imgs blank_mask.jpg --style_imgs eye.jpg --img_name egg7 --verbose;
python neural_style.py --content_img blank.jpg --style_mask --style_mask_imgs blank_mask.jpg --style_imgs the_scream.jpg --img_name egg10 --verbose;
python neural_style.py --content_img blank.jpg --style_mask --style_mask_imgs blank_mask.jpg --style_imgs scary.jpg --img_name egg11 --verbose;

python neural_style.py --content_img duke_chapel_small.jpg --style_imgs starry-night.jpg --style_mask --style_mask_imgs chapel_mask_background.png --verbose;

python neural_style.py --content_img duke_chapel_small.jpg --style_imgs japanese_waves.jpg --style_mask --style_mask_imgs chapel_mask_background.png --verbose;

python neural_style.py --content_img duke_chapel_small.jpg --style_imgs kandinsky.jpg --verbose;

python neural_style.py --content_img eye.jpg --style_imgs starry-night.jpg --style_mask --style_mask_imgs eye_mask.png --verbose;
python neural_style.py --content_img eye.jpg --style_imgs abstract_art1.jpg --style_mask --style_mask_imgs eye_mask.png --verbose;

python neural_style.py --content_img Cube_Nov_2018.jpg --style_imgs abstract_art2.jpg --verbose;

python neural_style.py --content_img Cube_Nov_2018.jpg --style_imgs abstract_art5.jpg abstract_art3.jpg --style_mask --style_mask_imgs body_mask.jpg body_mask_background.jpg --style_imgs_weights 0.5 0.5 --verbose;

python neural_style.py --content_img Cube_Nov_2018.jpg --style_imgs japanese_waves.jpg --verbose;
