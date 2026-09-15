#import <UIKit/UIKit.h>

// Fungsi otomatis untuk mengunci bidikan ke kepala musuh (Auto Headshot)
bool get_isHeadshot() {
    return true; 
}

// Fungsi otomatis agar tembakan langsung mengarah ke target (Aim Lock)
bool get_isAimLock() {
    return true; 
}

%ctor {
    // Memunculkan pop-up nama kamu saat game Free Fire dibuka (Versi Perbaikan iOS Terbaru)
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"ZaynixXios VIP"
                                                                       message:@"Sukses Memuat Dylib Kustom!\nFitur Auto Headshot & Aim Lock Aktif."
                                                                preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"Mulai Main" style:UIAlertActionStyleDefault handler:nil];
        [alert addAction:okAction];
        
        // Memaksa sistem mencari window utama tanpa menggunakan keyWindow yang eror
        UIWindow *window = nil;
        for (UIWindowScene *scene in [UIApplication sharedApplication].connectedScenes) {
            if (scene.activationState == UISceneActivationStateForegroundActive) {
                for (UIWindow *w in scene.windows) {
                    if (w.isKeyWindow) {
                        window = w;
                        break;
                    }
                }
            }
        }
        
        if (!window) {
            window = [UIApplication sharedApplication].windows.firstObject;
        }
        
        [window.rootViewController presentViewController:alert animated:YES completion:nil];
    });
}
