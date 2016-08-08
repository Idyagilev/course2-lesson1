//
//  Animations.m
//   Lesson 1
//
//  Created by T on 07.08.16.
//  Copyright © 2016 Tanya. All rights reserved.
//

#import "Animations.h"

@implementation Animations

+ (void) animatedView: (UIView *) view withColor : (UIColor *) color {
    
    [UIView animateWithDuration:0.3 animations:^{
        
        view.backgroundColor = color;
    }];

    
//    [UIView animateWithDuration: animations: completion:];
    
    
//      [UIView animateWithDuration:0.5 delay:0.3 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
//          view.backgroundColor = color;
//      } completion:^(BOOL finished) {
//          
//      }];

}

+ (void) animatedText: (UILabel *) label withText : (NSString *) text {
    
    CATransition * transitionAnimation = [CATransition animation];
    transitionAnimation.type = kCATransitionReveal;
    transitionAnimation.subtype = kCATransitionFromBottom;
    transitionAnimation.duration = 0.5;
    [transitionAnimation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
    
    [label.layer addAnimation:transitionAnimation forKey:nil];
    
    label.text = text;
}

+ (void) animatedFrame: (UIView *) view withFrame : (CGRect ) rect {
    
//    [UIView animateWithDuration:0.5 delay:0.0 usingSpringWithDamping:0.1 initialSpringVelocity:1.3 options:0 animations:^{
//        view.frame = rect;
//    } completion:^(BOOL finished) {
//        
//    }];
    
    [UIView animateWithDuration:0.5 animations:^{
        
        view.frame = rect;
    }];
}

+ (void) animatedTransform: (UIView *) view withScale: (CGFloat ) scale move_X: (CGFloat ) moveX move_Y: (CGFloat ) moveY alpha: (CGFloat ) alpha delay: (CGFloat ) delay {
    
        [UIView animateWithDuration:1.3 delay:0.0 usingSpringWithDamping:0.1 initialSpringVelocity:2.3 options:0 animations:^{
            
            CGFloat transformX = 0;
            CGFloat transformY = 0;
            CGFloat transformScale = 0;

            transformX = moveX;
            transformX = moveY;
            transformScale = scale;
            
            CGAffineTransform scaleT = CGAffineTransformMakeScale (scale, scale);
            CGAffineTransform trans = CGAffineTransformMakeTranslation(transformX, transformY);
            
            CGAffineTransform resultTransform = CGAffineTransformConcat(trans, scaleT);
            
            view.transform = resultTransform;
            
            view.alpha = alpha;

        } completion:^(BOOL finished) {
    
        }];
}

+ (void) animatedImage: (UIImageView *) imageView image: (UIImage *) image {
    
    [UIView transitionWithView:imageView duration:1.3 options:UIViewAnimationOptionTransitionFlipFromLeft
                    animations:^{
        
        imageView.image = image;
        
    } completion:NULL];
}

@end
