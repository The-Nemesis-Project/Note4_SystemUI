.class Lcom/android/keyguard/sec/SecKeyguardClockSingleView$5;
.super Ljava/lang/Object;
.source "SecKeyguardClockSingleView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->addTextChangedListenerForClockTimeMargin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    iget-object v2, v2, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$700(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getClockSize(Landroid/content/Context;)I

    move-result v0

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    iget-object v2, v2, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->isFirstDigitOne()Z

    move-result v2

    if-eqz v2, :cond_0

    int-to-float v2, v0

    const/high16 v3, 0x41700000    # 15.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    neg-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    iget-object v2, v2, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    iget-object v2, v2, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    const/4 v3, 0x0

    int-to-float v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextSize(IF)V

    return-void

    :cond_0
    int-to-float v2, v0

    const/high16 v3, 0x42480000    # 50.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
