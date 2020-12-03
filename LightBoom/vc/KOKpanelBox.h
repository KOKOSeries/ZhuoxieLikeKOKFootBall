//
//  KOKpanelBox.h
//  LightBoom
//
//  Created by JOY CHOW on 2020/12/3.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface KOKpanelBox : UIView
@property BOOL special;
@property UIColor *smallBoxColor;


- (id)initWithFrame:(CGRect)frame andColor:(UIColor*)smallBoxColor;
-(void) turnOnSmallBox;
@end

NS_ASSUME_NONNULL_END
