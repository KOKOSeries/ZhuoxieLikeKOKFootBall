//
//  KOKStandardButton.h
//  LightBoom
//
//  Created by JOY CHOW on 2020/12/3.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface KOKStandardButton : UIButton
@property BOOL toggledOn;
@property (nonatomic) UIColor *color;
@property (nonatomic) UIColor *strokeColor;
@property (nonatomic) UIColor *highColor;
@property (nonatomic) UIColor *highStrokeColor;


-(void) fadeIn;
-(void) fadeOut;
@end

NS_ASSUME_NONNULL_END
