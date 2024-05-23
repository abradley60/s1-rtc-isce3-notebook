# sentinel_1_isce3_rtc

Notebook for creating Radiometrically Terrain Corrected (RTC) backscatter data for Sentinel-1 using the ISCE3 software. All inputs are downloaded in the notebook.

Based on - https://github.com/ASFOpenSARlab/opensarlab-notebooks/blob/master/SAR_Training/English/Master/ISCE3_Sentinel1_RTC.ipynb

# Instructions

1. **Install miniconda (if a suitable conda envrionment not already installed)**

```sh
mkdir  -p  ~/miniconda3

wget  https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh  -O  ~/miniconda3/miniconda.sh

bash  ~/miniconda3/miniconda.sh  -b  -u  -p  ~/miniconda3

rm  -rf  ~/miniconda3/miniconda.sh

~/miniconda3/bin/conda init bash

```

2. **Create the conda envrionment**

```sh
conda env create -f environment.yml
```

3. **Activate the environment and install isce3-rtc project with the setup.sh file**

```sh
conda activate isce3_rtc
sh setup.sh
```

4. **Setup credentials**

* setup a nasa earthdata account at https://urs.earthdata.nasa.gov/users/new
* add credentials to **credentials/credentials_earthdata.yaml** based on example file in folder
* setup a ESA CDSE account at https://dataspace.copernicus.eu/
* add credentials to **credentials/copernicus_earthdata.yaml** based on example file in folder

5. **run the notebook**