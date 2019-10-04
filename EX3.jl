using JLD

# Pkg.add("Images")
# include("standard_start.jl")
img = imread("el-capitan.png")
imshow(img)
println("Checking size of the image")
println(size(img[:,:,1]))
println(size(img[:,1,:]))
println(size(img[1,:,:]))

println("Reset with git reset --mixed")

"""
ConverToRGB -- displays image and returns separated colored peices.
takes as input a string representing the filename, and
then loads the image file, displays it, and extracts the
red, blue, and green channels into separate variables, a
nd returns the content of those variables

Args:
   arg1 (str): takes as input a string representing the filename of
   an image

Returns:
   out (Float32[360,640, 3]): Returns 3 arrays of color values where
    the first is the red contents, second is the blue contents, and the
    third is the green - each of these are [360,640] pixeled arrays

"""
function converToRGB(fileName::String)
    img = imread(fileName)
    imshow(img)
    red = img[:, :, 1]
    green = img[:, :, 2]
    blue = img[:, :, 3]
    return red, green, blue
end

# part e
image2 = zeros(360, 640, 3)
returnInfo = converToRGB("el-capitan.png")
# altering the two colors
image2[:, :, 1] = returnInfo[2]
image2[:, :, 2] = returnInfo[3]
image2[:, :, 3] = returnInfo[1]
