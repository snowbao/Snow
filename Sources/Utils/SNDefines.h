//
//  SNDefines.h
//  Snow
//
//  Created by snow on 15/7/22.
//  Copyright (c) 2015年 snow. All rights reserved.
//

#ifndef Snow_SNDefines_h
#define Snow_SNDefines_h

#define BOLDSYSTEMFONT(FONTSIZE)[UIFont boldSystemFontOfSize:FONTSIZE]
#define SYSTEMFONT(FONTSIZE)    [UIFont systemFontOfSize:FONTSIZE]
#define FONT(NAME, FONTSIZE)    [UIFont fontWithName:(NAME) size:(FONTSIZE)]

typedef void(^AMCompletionBlock)(id object, NSString * errorDescription);

/*
 * Easy MACRO accessor for DTDeviceInfo
 *
 */

// screen width
#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)

// screen height
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)

// current iPhone screen size type
typedef enum {
    IPhoneScreenSizeTypeUnknown = 0,
    IPhoneScreenSizeType3p5,
    IPhoneScreenSizeType4p0,
    IPhoneScreenSizeType4p7,
    IPhoneScreenSizeType5p5,
} IPhoneScreenSizeType;

typedef enum {
    kTextFieldTotal,
    kTextFieldDiscount,
    kTextFieldNone,
} TextFieldType;

#define fequal(a, b) (fabs((a) - (b)) < FLT_EPSILON)

#define Cashier_Result_Cell_Height 26.0f

static inline IPhoneScreenSizeType getCurrentIPhoneScreenSizeType(void)
{
    if ((([[UIScreen mainScreen] scale] == 3.0) ? YES : NO) && (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)) {
        return IPhoneScreenSizeType5p5;
    } else if (fequal(SCREEN_HEIGHT, 667.f) && (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)) {
        return IPhoneScreenSizeType4p7;
    } else if (fequal(SCREEN_HEIGHT, 568.f) && (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)) {
        return IPhoneScreenSizeType4p0;
    } else if (fequal(SCREEN_HEIGHT, 480.f) && (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)) {
        return IPhoneScreenSizeType3p5;
    } else {
        return IPhoneScreenSizeTypeUnknown;
    }
}

#define IS_SCREEN_480 ((getCurrentIPhoneScreenSizeType()) == IPhoneScreenSizeType3p5)
#define IS_SCREEN_568 ((getCurrentIPhoneScreenSizeType()) == IPhoneScreenSizeType4p0)
#define IS_SCREEN_667 ((getCurrentIPhoneScreenSizeType()) == IPhoneScreenSizeType4p7)
#define IS_SCREEN_736 ((getCurrentIPhoneScreenSizeType()) == IPhoneScreenSizeType5p5)

// iOS version number
#define IOS_VERSION ([[[UIDevice currentDevice] systemVersion] floatValue])

// if retina display
#define IS_RETINA_SCREEN ([[UIScreen mainScreen] respondsToSelector:@selector(displayLinkWithTarget:selector:)] && ([UIScreen mainScreen].scale == 2.0))

// if iOS 7 or up
#define IS_IOS_7 (IOS_VERSION >= 7.0f)

#define isIphone6plus ([[UIScreen mainScreen] scale] == 3.0) ? YES : NO
#define isIphone6 ([[UIScreen mainScreen] bounds].size.width == 375) ? YES : NO
#define IS_IPAD (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)

#endif
