# Check for target product
ifeq (pa_marvel,$(TARGET_PRODUCT))
 
# Define PA bootanimation size
PARANOID_BOOTANIMATION_NAME := HDPI
   
# include ParanoidAndroid common configuration
include vendor/pa/config/pa_common.mk

# Inherit CM9 device configuration
include $(call all-subdir-makefiles)
$(call inherit-product, device/htc/marvel_pa/cm.mk)
    
PRODUCT_NAME := pa_marvel
    
GET_VENDOR_PROPS := $(shell vendor/pa/tools/getvendorprops.py $(PRODUCT_NAME))
    
endif
