//
//  KOKTileView.h
//  LightBoom
//
//  Created by JOY CHOW on 2020/12/3.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface KOKTileView : UIView
@property NSInteger myColumn;
@property NSInteger myRow;
@property (nonatomic) BOOL highlighted;
@property (nonatomic) BOOL solutionCell;
@property NSInteger color;

-(void) drawBoxWithColor: (UIColor*) color
                  stroke:(UIColor*) stroke
                  bounds: (CGRect) bounds;
@end

NS_ASSUME_NONNULL_END
