//
//  KOKcontainerView.h
//  LightBoom
//
//  Created by JOY CHOW on 2020/12/3.
//

#import <UIKit/UIKit.h>
#import "KOKStandardButton.h"
NS_ASSUME_NONNULL_BEGIN

@interface KOKcontainerView : UIView

@property KOKStandardButton *myButton;

- (id)initWithLeft:(CGFloat)left top:(CGFloat) top size:(CGFloat) size image:(NSString *) image label:(NSString *) label andHue: (CGFloat) hue;
@end

NS_ASSUME_NONNULL_END
