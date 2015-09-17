.class Lcom/android/systemui/settings/ToggleSlider$3;
.super Ljava/lang/Object;
.source "ToggleSlider.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/ToggleSlider;
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
    .line 335
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .param p1, "toggle"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v2, 0x0

    .line 339
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$600(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 340
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseAutoBrightnessDetail:Z

    if-nez v0, :cond_5

    .line 341
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mSlider:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$700(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/SeekBar;

    move-result-object v3

    if-nez p2, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 342
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$800(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$800(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mSlider:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$700(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/SeekBar;

    move-result-object v0

    if-nez p2, :cond_4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$600(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mTracking:Z
    invoke-static {v2}, Lcom/android/systemui/settings/ToggleSlider;->access$900(Lcom/android/systemui/settings/ToggleSlider;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mSlider:Landroid/widget/SeekBar;
    invoke-static {v3}, Lcom/android/systemui/settings/ToggleSlider;->access$700(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-interface {v0, v1, v2, p2, v3}, Lcom/android/systemui/settings/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/settings/ToggleSlider;ZZI)V

    .line 347
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$800(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$800(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$500(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mSlider:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$700(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/android/systemui/settings/ToggleSlider;->updateIcon(ZI)V

    .line 351
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$800(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 352
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$800(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mSlider:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$700(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/android/systemui/settings/ToggleSlider;->updateIcon(ZI)V

    .line 404
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v0, v2

    .line 341
    goto :goto_0

    :cond_4
    move v1, v2

    .line 343
    goto :goto_1

    .line 355
    :cond_5
    if-eqz p2, :cond_9

    .line 356
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mTwSliderLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$1000(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 357
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mSliderLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$1100(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 358
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mSlider:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$700(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 360
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$1300(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mTWSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1200(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 361
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mIsTogglePressed:Z
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$200(Lcom/android/systemui/settings/ToggleSlider;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 362
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$600(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mTracking:Z
    invoke-static {v3}, Lcom/android/systemui/settings/ToggleSlider;->access$900(Lcom/android/systemui/settings/ToggleSlider;)Z

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;
    invoke-static {v4}, Lcom/android/systemui/settings/ToggleSlider;->access$1300(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    invoke-interface {v0, v1, v3, p2, v4}, Lcom/android/systemui/settings/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/settings/ToggleSlider;ZZI)V

    .line 363
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # setter for: Lcom/android/systemui/settings/ToggleSlider;->mIsTogglePressed:Z
    invoke-static {v0, v2}, Lcom/android/systemui/settings/ToggleSlider;->access$202(Lcom/android/systemui/settings/ToggleSlider;Z)Z

    .line 365
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$800(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 366
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$800(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mTwSliderLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$1000(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 367
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$800(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mSliderLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$1100(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$800(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mSlider:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$700(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 369
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$800(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$1300(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mTWSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1200(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 370
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$800(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$500(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 372
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1300(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    mul-int/lit8 v1, v1, 0x19

    invoke-virtual {v0, p2, v1}, Lcom/android/systemui/settings/ToggleSlider;->updateIcon(ZI)V

    .line 373
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$800(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 374
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$800(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1300(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    mul-int/lit8 v1, v1, 0x19

    invoke-virtual {v0, p2, v1}, Lcom/android/systemui/settings/ToggleSlider;->updateIcon(ZI)V

    .line 398
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$1500(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$1500(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->getMirror()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 399
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$1500(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->hideMirror()V

    goto/16 :goto_2

    .line 377
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mSliderLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$1100(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mTwSliderLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$1000(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$1300(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 381
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mSlider:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$700(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1400(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 382
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mIsTogglePressed:Z
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$200(Lcom/android/systemui/settings/ToggleSlider;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 383
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$600(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mTracking:Z
    invoke-static {v3}, Lcom/android/systemui/settings/ToggleSlider;->access$900(Lcom/android/systemui/settings/ToggleSlider;)Z

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mSlider:Landroid/widget/SeekBar;
    invoke-static {v4}, Lcom/android/systemui/settings/ToggleSlider;->access$700(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    invoke-interface {v0, v1, v3, p2, v4}, Lcom/android/systemui/settings/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/settings/ToggleSlider;ZZI)V

    .line 384
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # setter for: Lcom/android/systemui/settings/ToggleSlider;->mIsTogglePressed:Z
    invoke-static {v0, v2}, Lcom/android/systemui/settings/ToggleSlider;->access$202(Lcom/android/systemui/settings/ToggleSlider;Z)Z

    .line 386
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$800(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 387
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$800(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mSliderLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$1100(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 388
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$800(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mTwSliderLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$1000(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 389
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$800(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$1300(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 390
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$800(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mSlider:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$700(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1400(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 391
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$800(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$500(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 393
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mSlider:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$700(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/android/systemui/settings/ToggleSlider;->updateIcon(ZI)V

    .line 394
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$800(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 395
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->access$800(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$3;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mSlider:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$700(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/android/systemui/settings/ToggleSlider;->updateIcon(ZI)V

    goto/16 :goto_3
.end method
