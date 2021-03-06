//
//  KOKStandardButton.m
//  LightBoom
//
//  Created by JOY CHOW on 2020/12/3.
//

#import "KOKStandardButton.h"

#import "KOKStandardButton.h"
#import "KOKHelperMethods.h"
@implementation KOKStandardButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self)
    {
        _toggledOn = FALSE;
        // Initialize a middle gray button.  We can change this later.
        
        
        _color = [[UIColor alloc] initWithRed:.5 green:.5 blue:.5 alpha:1];
        
        _strokeColor = [[UIColor alloc] initWithRed:.7 green:.7 blue:.7 alpha:1];
        _highColor = [[UIColor alloc] initWithRed:.7 green:.7 blue:.7 alpha:1];
        _highStrokeColor = [[UIColor alloc] initWithRed:.9 green:.9 blue:.9 alpha:1];
       
    }
    
    return self;
}


-(void) setHighlighted:(BOOL)highlighted
{
    //NSLog(@"being highlighted.");
    [super setHighlighted:highlighted];
    
    [self setNeedsDisplay];
}



- (void)drawRect:(CGRect)rect
{
    
    if (self.isHighlighted)
    {
        [KOKHelperMethods drawBoxWithColor: self.highColor
                                 stroke: self.highStrokeColor
                                 bounds: self.bounds];
        
        
    }
    else
    {
        if (self.toggledOn)
        {
            [KOKHelperMethods drawBoxWithColor: self.highColor
                                     stroke: self.highStrokeColor
                                     bounds: self.bounds];
        }
        else
        {
        
        [KOKHelperMethods drawBoxWithColor: self.color
                                 stroke: self.strokeColor
                                 bounds: self.bounds];
        
        }
    }
}
-(void) fadeIn
{
    float timerLength = 4;
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
        self.alpha = .1;
    }];
    
    [NSTimer scheduledTimerWithTimeInterval:1
                                     target:self
                                   selector:@selector(fadeIn)
                                   userInfo:nil
                                    repeats:NO];
}
@end

