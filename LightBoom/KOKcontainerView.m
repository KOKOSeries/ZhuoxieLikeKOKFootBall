//
//  KOKcontainerView.m
//  LightBoom
//
//  Created by JOY CHOW on 2020/12/3.
//

#import "KOKcontainerView.h"

@implementation KOKcontainerView
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (id)initWithLeft:(CGFloat)left top:(CGFloat) top size:(CGFloat) size image:(NSString *) image label:(NSString *) label andHue: (CGFloat) hue
{
    CGPoint viewOrigin = {left-10, top};
    CGSize viewSize = {size + 20,size + 20};
    CGRect frame = {viewOrigin,viewSize};
    
    self = [super initWithFrame:frame];
    if (self) {
        CGPoint buttonOrigin = {0,0};
        CGSize buttonSize = {size,size};
        CGRect buttonFrame = {buttonOrigin, buttonSize};
        
        CGPoint labelOrigin = {(0-(size*.2)), (size*1.1)};
        
        CGSize labelSize = {size*1.5, 30};
        CGRect labelFrame = {labelOrigin ,labelSize};
        
        
        _myButton = [[KOKStandardButton alloc] initWithFrame:buttonFrame];
       
        CGRect screenRect = [[UIScreen mainScreen] bounds];
        CGFloat screenWidth = screenRect.size.width;
        // CGFloat screenHeight = screenRect.size.height;
        
        float fontsize = screenWidth*.03;
        if (fontsize < 11) {
            fontsize = 11;
        }
        if (fontsize > 30) {
            fontsize = 30;
        }
        
        UIFont *buttonFont = [UIFont boldSystemFontOfSize:fontsize];
        NSAttributedString *buttonAttributedString;
        NSDictionary *attributes = @{ NSFontAttributeName: buttonFont,      NSForegroundColorAttributeName: [UIColor whiteColor]};
        buttonAttributedString = [[NSAttributedString alloc] initWithString:label attributes:attributes];
        
        //self.backgroundColor = [[UIColor alloc] initWithRed:0 green:0 blue:0 alpha:0];
        
        UILabel *buttonViewLabel = [[UILabel alloc] initWithFrame:labelFrame];
        [buttonViewLabel setAttributedText:buttonAttributedString];
        [buttonViewLabel setBackgroundColor:[[UIColor alloc] initWithRed:0 green:0 blue:0 alpha:0]];
        [buttonViewLabel setTextAlignment:NSTextAlignmentCenter];
        
        
        //[_myButton setBackgroundColor:[[UIColor alloc]initWithRed:1 green:0 blue:0 alpha:1]];
        
        [self addSubview:_myButton];
        [self addSubview:buttonViewLabel];
        
        UIImage *iconImage = [UIImage imageNamed:image];
        UIImageView *iconImageView = [[UIImageView alloc] initWithFrame:buttonFrame];
        [iconImageView setImage:iconImage];
        
        [self addSubview:iconImageView];
        
    }
    return self;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end

