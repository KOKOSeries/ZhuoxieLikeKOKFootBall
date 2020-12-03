//
//  KOKjewelButton.m
//  LightBoom
//
//  Created by JOY CHOW on 2020/12/3.
//

#import "KOKjewelButton.h"

@implementation KOKjewelButton
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        //NSLog(@"Glow Init.");
        self.jewel = [[KOKJewel alloc] initWithFrame:self.frame];
        self.jewel.myColor =  self.myColor;
        self.jewel.backgroundColor = [UIColor colorWithHue:0 saturation:0 brightness:0 alpha:0];
    
         [self addSubview:self.jewel];
    }
    return self;
}

-(void) fadeIn
{
    float timerLength = 2;
    self.alpha = 0;
    
    [UIView animateWithDuration:1 animations:^{
        self.alpha = 1;
    }];
    
    
    [NSTimer scheduledTimerWithTimeInterval:timerLength
                                     target:self
                                   selector:@selector(fadeOut)
                                   userInfo:nil
                                    repeats:NO];
}

-(void) fadeOut
{
    self.alpha = 1;
    
    
    [UIView animateWithDuration:1 animations:^{
        self.alpha = 0;
    }];
    
    [NSTimer scheduledTimerWithTimeInterval:1
                                     target:self
                                   selector:@selector(fadeIn)
                                   userInfo:nil
                                    repeats:NO];
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

