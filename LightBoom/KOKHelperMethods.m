//
//  KOKHelperMethods.m
//  LightBoom
//
//  Created by JOY CHOW on 2020/12/3.
//

#import "KOKHelperMethods.h"
#import "KOKHelperMethods.h"
#import "KOKStandardButton.h"
@implementation KOKHelperMethods
+(void) drawBoxWithColor: (UIColor*) color
                     stroke:(UIColor*) stroke
                     bounds: (CGRect) bounds
{
    float bevelSize = bounds.size.width * .2;
    
    UIBezierPath *roundedRect = [UIBezierPath bezierPathWithRoundedRect:bounds cornerRadius:bevelSize];
    [roundedRect addClip];
    
    [color setFill];
    UIRectFill(bounds);
    
    roundedRect.lineWidth = bounds.size.width *.1; //BUTTON_LINE_WIDTH;
    [stroke setStroke];
    [roundedRect stroke];
}



+(UIButton *) createAButton: (NSString *) string at:(float) left and:(float) top ofWidth:(float) width andHeight: (float) height
{
    CGPoint buttonOrigin = {left,top};
    CGSize buttonSize = {width,height};
    CGRect frame = {buttonOrigin, buttonSize};
    KOKStandardButton *button;

    button = [[KOKStandardButton alloc] initWithFrame:frame];
    UIFont *buttonFont = [UIFont boldSystemFontOfSize: (int) height * .3 ];

    NSAttributedString *buttonAttributedString;
    NSDictionary *attributes = @{ NSFontAttributeName: buttonFont, NSForegroundColorAttributeName: [UIColor whiteColor]};
    buttonAttributedString = [[NSAttributedString alloc] initWithString:string attributes:attributes];
        
    [button setAttributedTitle:buttonAttributedString forState:UIControlStateNormal];
    
    
    return button;
}

+(UILabel *) createALabel: (NSString *) string ofSize: (float) labelSize withFrame:(CGRect)labelFrame
{
    UILabel *newLabel = [[UILabel alloc] initWithFrame:labelFrame];
    UIFont *labelFont = [UIFont boldSystemFontOfSize:(CGFloat) (labelSize*.5)];
    NSAttributedString *labelAttributedString;
    NSDictionary *attributes = @{ NSFontAttributeName: labelFont, NSForegroundColorAttributeName: [UIColor whiteColor],
                                 
    };
    labelAttributedString = [[NSAttributedString alloc] initWithString:string attributes:attributes];
    
    UIColor *transparentColor = [[UIColor alloc] initWithRed:0 green:0 blue:0 alpha:0];
    
    [newLabel setAttributedText:labelAttributedString];
    
    [newLabel setBackgroundColor:transparentColor];
    return newLabel;
    
}

+(UILabel *) createATitle: (NSString *) string ofSize: (float) labelSize withFrame:(CGRect)labelFrame
{
    UILabel *newLabel = [[UILabel alloc] initWithFrame:labelFrame];
    UIFont *labelFont = [UIFont boldSystemFontOfSize:(CGFloat) labelSize];
    NSAttributedString *labelAttributedString;
    NSDictionary *attributes = @{ NSFontAttributeName: labelFont, NSForegroundColorAttributeName: [UIColor whiteColor],
                                 
    };
    labelAttributedString = [[NSAttributedString alloc] initWithString:string attributes:attributes];
    
    UIColor *transparentColor = [[UIColor alloc] initWithRed:0 green:0 blue:0 alpha:0];
    
    [newLabel setAttributedText:labelAttributedString];
    
    [newLabel setBackgroundColor:transparentColor];
    return newLabel;
    
}

@end

