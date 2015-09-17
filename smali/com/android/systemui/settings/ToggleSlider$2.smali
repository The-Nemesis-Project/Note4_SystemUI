.class Lcom/android/systemui/settings/ToggleSlider$2;
.super Ljava/lang/Object;
.source "ToggleSlider.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v9, 0x42

    const/16 v8, 0x17

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 232
    new-array v1, v3, [Ljava/lang/String;

    const-string v4, "false"

    aput-object v4, v1, v2

    .line 233
    .local v1, "selectionArgs":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v5, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/systemui/settings/ToggleSlider;->access$000(Lcom/android/systemui/settings/ToggleSlider;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v7, "isSettingsChangesAllowed"

    # invokes: Lcom/android/systemui/settings/ToggleSlider;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    invoke-static {v4, v5, v6, v7, v1}, Lcom/android/systemui/settings/ToggleSlider;->access$100(Lcom/android/systemui/settings/ToggleSlider;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 235
    .local v0, "isSettingsChangesAllowed":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    if-nez v0, :cond_0

    .line 236
    const-string v2, "toggleSlider"

    const-string v4, "onTouch(): Change brightness was not allowed"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :goto_0
    return v3

    .line 241
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_1
    :goto_1
    move v3, v2

    .line 262
    goto :goto_0

    .line 243
    :pswitch_0
    if-eq p2, v9, :cond_2

    if-ne p2, v8, :cond_1

    .line 244
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;
    invoke-static {v4}, Lcom/android/systemui/settings/ToggleSlider;->access$500(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/CompoundButton;->setPressed(Z)V

    .line 245
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # setter for: Lcom/android/systemui/settings/ToggleSlider;->mIsTogglePressed:Z
    invoke-static {v4, v3}, Lcom/android/systemui/settings/ToggleSlider;->access$202(Lcom/android/systemui/settings/ToggleSlider;Z)Z

    .line 247
    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mDiagnosticLogs:Z
    invoke-static {}, Lcom/android/systemui/settings/ToggleSlider;->access$300()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 248
    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # invokes: Lcom/android/systemui/settings/ToggleSlider;->sendLogs()V
    invoke-static {v3}, Lcom/android/systemui/settings/ToggleSlider;->access$400(Lcom/android/systemui/settings/ToggleSlider;)V

    goto :goto_1

    .line 254
    :pswitch_1
    if-eq p2, v9, :cond_3

    if-ne p2, v8, :cond_1

    .line 255
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;
    invoke-static {v4}, Lcom/android/systemui/settings/ToggleSlider;->access$500(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/CompoundButton;->playSoundEffect(I)V

    .line 256
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;
    invoke-static {v4}, Lcom/android/systemui/settings/ToggleSlider;->access$500(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/CompoundButton;->setPressed(Z)V

    .line 257
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;
    invoke-static {v4}, Lcom/android/systemui/settings/ToggleSlider;->access$500(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v5}, Lcom/android/systemui/settings/ToggleSlider;->isChecked()Z

    move-result v5

    if-nez v5, :cond_4

    move v2, v3

    :cond_4
    invoke-virtual {v4, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 241
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
