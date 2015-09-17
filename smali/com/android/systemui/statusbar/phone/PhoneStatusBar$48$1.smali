.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48$1;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;)V
    .locals 0

    .prologue
    .line 5445
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5448
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setAlpha(F)V

    .line 5449
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$10500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5450
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$10500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 5452
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$10502(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 5453
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionFadingAway:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$10402(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 5454
    return-void
.end method
