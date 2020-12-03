//
//  KOKHelperMethods.h
//  LightBoom
//
//  Created by JOY CHOW on 2020/12/3.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#define ROUNDED_CORNER_SIZE 10
#define STANDARD_BUTTON_WIDTH = 300;
#define STANDARD_BUTTON_HEIGHT = 80;
NS_ASSUME_NONNULL_BEGIN

@interface KOKHelperMethods : NSObject
+(void) drawBoxWithColor: (UIColor*) color
                     stroke:(UIColor*) stroke
                     bounds: (CGRect) bounds;


//+(void) changeTextColorOfButton: (UIButton *) thisButton to:(UIColor*) newColor forState: (UIControlState) state;

+(UIButton *) createAButton: (NSString *) string at:(float) left and:(float) top ofWidth:(float) width andHeight: (float) height;

//+(UIView *) createAnIconButton: (NSString *) string at:(float) left and:(float) top ofSize:(float) size withImage:(NSString *) image withColor: (UIColor *) color;

+(UILabel *) createALabel: (NSString *) string ofSize: (float) labelSize withFrame:(CGRect)labelFrame;

+(UILabel *) createATitle: (NSString *) string ofSize: (float) labelSize withFrame:(CGRect)labelFrame;

@end

NS_ASSUME_NONNULL_END
