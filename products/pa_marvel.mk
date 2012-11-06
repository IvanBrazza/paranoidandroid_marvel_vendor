# Check for target product
ifeq (pa_marvel,$(TARGET_PRODUCT))
 
# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_mdpi
   
# include ParanoidAndroid common configuration
include vendor/pa/config/pa_common.mk

# Inherit CM device configuration
$(call inherit-product, device/htc/marvel_pa/cm.mk)
    
PRODUCT_NAME := pa_marvel
    
GET_VENDOR_PROPS := $(shell vendor/pa/tools/getvendorprops.py $(PRODUCT_NAME))
    
endif
