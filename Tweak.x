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
    // Memunculkan pop-up keren nama kamu saat game Free Fire dibuka
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"ZaynixXios VIP"
                                                                       message:@"Sukses Memuat Dylib Kustom!\nFitur Auto Headshot & Aim Lock Aktif."
                                                                preferredStyle:UIAlertControllerStyleAlert];
        [alert addAction:[UIAlertController actionWithTitle:@"Mulai Main" style:UIAlertActionStyleDefault handler:nil]];
        [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:alert animated:YES completion:nil];
    });
}
