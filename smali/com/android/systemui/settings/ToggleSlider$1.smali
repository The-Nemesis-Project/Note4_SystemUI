.class Lcom/android/systemui/settings/ToggleSlider$1;
.super Ljava/lang/Object;
.source "ToggleSlider.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/settings/ToggleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/ToggleSlider;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/ToggleSlider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSlider$1;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-array v2, v3, [Ljava/lang/String;

    const-string v5, "false"

    aput-object v5, v2, v4

    iget-object v5, p0, Lcom/android/systemui/settings/ToggleSlider$1;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v6, p0, Lcom/android/systemui/settings/ToggleSlider$1;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/systemui/settings/ToggleSlider;->access$000(Lcom/android/systemui/settings/ToggleSlider;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v8, "isSettingsChangesAllowed"

    # invokes: Lcom/android/systemui/settings/ToggleSlider;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    invoke-static {v5, v6, v7, v8, v2}, Lcom/android/systemui/settings/ToggleSlider;->access$100(Lcom/android/systemui/settings/ToggleSlider;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    if-nez v1, :cond_0

    const-string v4, "toggleSlider"

    const-string v5, "onTouch(): Change brightness was not allowed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    move v3, v4

    goto :goto_0

    :pswitch_0
    iget-object v5, p0, Lcom/android/systemui/settings/ToggleSlider$1;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # setter for: Lcom/android/systemui/settings/ToggleSlider;->mIsTogglePressed:Z
    invoke-static {v5, v3}, Lcom/android/systemui/settings/ToggleSlider;->access$202(Lcom/android/systemui/settings/ToggleSlider;Z)Z

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mDiagnosticLogs:Z
    invoke-static {}, Lcom/android/systemui/settings/ToggleSlider;->access$300()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSlider$1;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # invokes: Lcom/android/systemui/settings/ToggleSlider;->sendLogs()V
    invoke-static {v3}, Lcom/android/systemui/settings/ToggleSlider;->access$400(Lcom/android/systemui/settings/ToggleSlider;)V

    goto :goto_1

    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSlider$1;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;
    invoke-static {v3}, Lcom/android/systemui/settings/ToggleSlider;->access$500(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->playSoundEffect(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
