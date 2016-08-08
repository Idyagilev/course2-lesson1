//
//  ViewController.m
//   Lesson 1
//
//  Created by T on 07.08.16.
//  Copyright © 2016 Tanya. All rights reserved.
//

#import "ViewController.h"
#import "Animations.h"


@interface ViewController () {
    BOOL isButton1;
}
@property (weak, nonatomic) IBOutlet UIButton *buttonOne;
@property (weak, nonatomic) IBOutlet UIButton *buttonTwo;
@property (weak, nonatomic) IBOutlet UILabel *labelOne;
@property (weak, nonatomic) IBOutlet UILabel *labelTwo;
@property (weak, nonatomic) IBOutlet UIView *someView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    isButton1 = YES;
    
    self.buttonOne.layer.borderWidth = 1;
    self.buttonOne.layer.cornerRadius = 4;
    self.buttonOne.layer.borderColor = [UIColor grayColor].CGColor;
    [self.buttonOne setBackgroundColor:[UIColor blueColor]];
    
    self.buttonTwo.layer.borderWidth = 1;
    self.buttonTwo.layer.cornerRadius = 4;
    self.buttonTwo.layer.borderColor = [UIColor grayColor].CGColor;
    
    [self.buttonOne addTarget:self action:@selector(check1) forControlEvents:UIControlEventTouchUpInside];
    [self.buttonTwo addTarget:self action:@selector(check2) forControlEvents:UIControlEventTouchUpInside];
    
    self.labelOne.text = @"Пикиктрони";
    self.labelTwo.text = @"Мандрагони";
    
    self.someView.alpha = 0;
}

- (void) check1 {
    
    if (!isButton1) {
        isButton1 = YES;
        
        [Animations animatedView:self.buttonOne withColor:[UIColor blueColor]];
        [Animations animatedView:self.buttonTwo withColor:[UIColor whiteColor]];
                
        [Animations animatedText:self.labelOne withText:@"Пикиктрони"];
        [Animations animatedText:self.labelTwo withText:@"Мандрагони"];
        
//        CGRect newFrame = self.someView.frame;
//        newFrame.size.width = newFrame.size.width + 100;
//        
//        [Animations animatedFrame:self.someView withFrame:newFrame];
        
        [Animations animatedTransform:self.someView withScale:1.8 move_X:0.0 move_Y:0.0 alpha:1 delay:0.0];
        [Animations animatedTransform:self.someView withScale:1.0 move_X:0.0 move_Y:0.0 alpha:0 delay:0.2];
        
    }
}

- (void) check2 {
    
    if (isButton1) {
        isButton1 = NO;
        
        [Animations animatedView:self.buttonOne withColor:[UIColor whiteColor]];
        [Animations animatedView:self.buttonTwo withColor:[UIColor blueColor]];
        
        [Animations animatedText:self.labelOne withText:@"Мандрагони"];
        [Animations animatedText:self.labelTwo withText:@"Пикиктрони"];
        
        [Animations animatedImage:self.imageView image:[UIImage imageNamed:@"Old-school.jpg"]];
        
        [Animations animatedTransform:self.someView withScale:1.8 move_X:0.0 move_Y:0.0 alpha:1 delay:0.0];
//        [Animations animatedTransform:self.someView withScale:1.0 move_X:0.0 move_Y:0.0 alpha:1 delay:0.2];
        
//        CGRect newFrame = self.someView.frame;
//        newFrame.size.width = newFrame.size.width - 100;
//        
//        [Animations animatedFrame:self.someView withFrame:newFrame];
        
//        newFrame.origin.x = newFrame.origin.x - 100;
//        newFrame.size.width = newFrame.size.width - 100;

//        self.labelOne.text = @"Мандрагони";
//        self.labelTwo.text = @"Пикиктрони";
        
//        [self.buttonOne setBackgroundColor:[UIColor whiteColor]];
//        [self.buttonTwo setBackgroundColor:[UIColor blueColor]];
        
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
