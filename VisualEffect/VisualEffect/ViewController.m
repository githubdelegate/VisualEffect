//
//  ViewController.m
//  VisualEffect
//
//  Created by zhangyun on 27/10/2016.
//  Copyright © 2016 zhangyun. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>
#import "UIView+YXUtil.h"

@interface ViewController ()

@property (strong, nonatomic) AVCaptureSession *captureSession;
@property (weak, nonatomic) AVCaptureDeviceInput *activeVideoInput;
@property (nonatomic,strong) AVCaptureVideoPreviewLayer  *previewLayer;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    
    
    self.captureSession = [[AVCaptureSession alloc] init];                  // 1
    self.captureSession.sessionPreset = AVCaptureSessionPresetHigh;
    
    // Set up default camera device
    AVCaptureDevice *videoDevice =                                          // 2
    [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
    
    AVCaptureDeviceInput *videoInput =                                      // 3
    [AVCaptureDeviceInput deviceInputWithDevice:videoDevice error:nil];
    if (videoInput) {
        if ([self.captureSession canAddInput:videoInput]) {                 // 4
            [self.captureSession addInput:videoInput];
            self.activeVideoInput = videoInput;
        }
    }
    
    AVCaptureVideoPreviewLayer *layer = [AVCaptureVideoPreviewLayer layerWithSession:self.captureSession];
    self.previewLayer = layer;
    self.previewLayer.frame = self.view.bounds;
    [self.captureSession startRunning];
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];

    [self.view.layer addSublayer:self.previewLayer];
    
    [self showBlurView];
}

- (void)showBlurView{
    UIView *v = [[UIView alloc] initWithFrame:CGRectMake(0, 100, 300, 300)];
    [self.view addSubview:v];
    [v addYXLBlurEffectWithColor:[UIColor whiteColor] blurRadius:20 alpha:0.8];
}
@end
