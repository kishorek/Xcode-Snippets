// Combined gestures
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 7963B9EA-ADFB-4D9E-8393-5EBADBBD3B6D
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetPlatformFamily: iphoneos
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2

-(void) pinched:(UIPinchGestureRecognizer *) pnc{
    
    if([pnc state] == UIGestureRecognizerStateBegan) {
        self.lastScale = 1.0;
    }
    
    CGFloat newScale = 1.0 - (self.lastScale - pnc.scale);
    CGAffineTransform currentTransform = self.tagView.transform;
    CGAffineTransform newTransform = CGAffineTransformScale(currentTransform, newScale, newScale);
    [self.tagView setTransform:newTransform];
    self.lastScale = [pnc scale];

    
//    self.tagView.transform = CGAffineTransformMakeScale(pnc.scale, pnc.scale);
    self.tagFrame = NSStringFromCGRect(self.tagView.frame);
}

-(void) rotated:(UIRotationGestureRecognizer *) rt{

    if([rt state] == UIGestureRecognizerStateEnded) {
        self.lastRotation = 0.0;
        return;
    }
    
    CGFloat rotation = 0.0 - (self.lastRotation - [rt rotation]);
    CGAffineTransform currentTransform = self.tagView.transform;
    CGAffineTransform newTransform = CGAffineTransformRotate(currentTransform,rotation);
    [self.tagView setTransform:newTransform];
    self.lastRotation = [rt rotation];

    //self.tagView.transform = CGAffineTransformRotate(rt.rotation);
    self.tagFrame = NSStringFromCGRect(self.tagView.frame);    
}
