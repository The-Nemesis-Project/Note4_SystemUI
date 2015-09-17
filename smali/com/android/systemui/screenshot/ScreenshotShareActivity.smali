.class public Lcom/android/systemui/screenshot/ScreenshotShareActivity;
.super Landroid/app/Activity;
.source "ScreenshotShareActivity.java"


# static fields
.field private static final SCREENSHOT_NOTIFICATION_ID:I = 0x315

.field private static final TAG:Ljava/lang/String; = "ScreenshotShareActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/systemui/screenshot/ScreenshotShareActivity;->requestWindowFeature(I)Z

    const-string v2, "keyguard"

    invoke-virtual {p0, v2}, Lcom/android/systemui/screenshot/ScreenshotShareActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/systemui/screenshot/ScreenshotShareActivity$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/screenshot/ScreenshotShareActivity$1;-><init>(Lcom/android/systemui/screenshot/ScreenshotShareActivity;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotShareActivity;->startChooserActivity()V

    goto :goto_0
.end method

.method startChooserActivity()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/ScreenshotShareActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotShareActivity;->finish()V

    return-void
.end method
