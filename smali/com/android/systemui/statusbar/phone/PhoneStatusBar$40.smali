.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    .prologue
    .line 4603
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4605
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$7400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4606
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->haltTicker()V

    .line 4607
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$7402(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 4609
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTieckerEnabledByCover:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$7202(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 4610
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    if-eqz v0, :cond_1

    .line 4611
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/IconMerger;->setVisibility(I)V

    .line 4612
    :cond_1
    return-void
.end method
