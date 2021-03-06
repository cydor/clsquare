find_path ( USB_INCLUDE_DIR usb.h HINTS /opt/local/include /usr/local/include /usr/include /opt/include )
find_library ( USB_LIBRARY NAMES usb HINTS /opt/local/lib /usr/local/lib /usr/lib /opt/lib )
if ( USB_LIBRARY AND USB_INCLUDE_DIR )
  set ( FOUND_USB TRUE )
else ()
  message ( WARNING " could not find libusb (LIBRARY=${USB_LIBRARY}, INCLUDE=${USB_INCLUDE_DIR})" )
endif ()
mark_as_advanced ( USB_INCLUDE_DIR USB_LIBRARY )
