.class public Lcom/sec/android/cover/widget/PopupFrameView;
.super Landroid/widget/FrameLayout;
.source "PopupFrameView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/widget/PopupFrameView$OnCloseListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field private mOnCloseListener:Lcom/sec/android/cover/widget/PopupFrameView$OnCloseListener;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/sec/android/cover/widget/PopupFrameView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/widget/PopupFrameView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/widget/PopupFrameView;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 28
    new-instance v0, Lcom/sec/android/cover/widget/PopupFrameView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/widget/PopupFrameView$1;-><init>(Lcom/sec/android/cover/widget/PopupFrameView;)V

    iput-object v0, p0, Lcom/sec/android/cover/widget/PopupFrameView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 40
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/cover/widget/PopupFrameView;Lcom/samsung/android/cover/CoverState;)Lcom/samsung/android/cover/CoverState;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/widget/PopupFrameView;
    .param p1, "x1"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/sec/android/cover/widget/PopupFrameView;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-object p1
.end method

.method public static closeAllPopup(Landroid/view/ViewGroup;)V
    .locals 5
    .param p0, "popupParent"    # Landroid/view/ViewGroup;

    .prologue
    .line 93
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 94
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 95
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 96
    .local v1, "curView":Landroid/view/View;
    instance-of v4, v1, Lcom/sec/android/cover/widget/PopupFrameView;

    if-eqz v4, :cond_0

    move-object v3, v1

    .line 97
    check-cast v3, Lcom/sec/android/cover/widget/PopupFrameView;

    .line 98
    .local v3, "popup":Lcom/sec/android/cover/widget/PopupFrameView;
    invoke-virtual {v3}, Lcom/sec/android/cover/widget/PopupFrameView;->close()V

    .line 94
    .end local v3    # "popup":Lcom/sec/android/cover/widget/PopupFrameView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    .end local v1    # "curView":Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PopupFrameView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 105
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 107
    iget-object v1, p0, Lcom/sec/android/cover/widget/PopupFrameView;->mOnCloseListener:Lcom/sec/android/cover/widget/PopupFrameView$OnCloseListener;

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/sec/android/cover/widget/PopupFrameView;->mOnCloseListener:Lcom/sec/android/cover/widget/PopupFrameView$OnCloseListener;

    invoke-interface {v1, p0}, Lcom/sec/android/cover/widget/PopupFrameView$OnCloseListener;->onClose(Lcom/sec/android/cover/widget/PopupFrameView;)V

    .line 109
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/cover/widget/PopupFrameView;->mOnCloseListener:Lcom/sec/android/cover/widget/PopupFrameView$OnCloseListener;

    .line 112
    :cond_0
    sget-object v1, Lcom/sec/android/cover/widget/PopupFrameView;->TAG:Ljava/lang/String;

    const-string v2, "close : Popup closed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_1
    sget-object v1, Lcom/sec/android/cover/widget/PopupFrameView;->TAG:Ljava/lang/String;

    const-string v2, "close : Parent is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 134
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 136
    iget-object v0, p0, Lcom/sec/android/cover/widget/PopupFrameView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/widget/PopupFrameView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 137
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sec/android/cover/widget/PopupFrameView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/widget/PopupFrameView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 143
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 144
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 124
    sget-object v0, Lcom/sec/android/cover/widget/PopupFrameView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged : hasFocus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 127
    if-nez p1, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PopupFrameView;->close()V

    .line 130
    :cond_0
    return-void
.end method

.method public setOnCloseListener(Lcom/sec/android/cover/widget/PopupFrameView$OnCloseListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/cover/widget/PopupFrameView$OnCloseListener;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/sec/android/cover/widget/PopupFrameView;->mOnCloseListener:Lcom/sec/android/cover/widget/PopupFrameView$OnCloseListener;

    .line 120
    return-void
.end method

.method public show(Landroid/view/ViewGroup;Ljava/lang/String;Z)V
    .locals 10
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "closeAllPreviousPopups"    # Z

    .prologue
    const/4 v9, -0x1

    .line 43
    sget-object v6, Lcom/sec/android/cover/widget/PopupFrameView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "show : close previous popup="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PopupFrameView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 46
    .local v1, "curParent":Landroid/view/ViewGroup;
    const/4 v6, 0x1

    if-ne p3, v6, :cond_0

    .line 47
    invoke-static {p1}, Lcom/sec/android/cover/widget/PopupFrameView;->closeAllPopup(Landroid/view/ViewGroup;)V

    .line 50
    :cond_0
    if-nez v1, :cond_1

    .line 51
    iget-object v6, p0, Lcom/sec/android/cover/widget/PopupFrameView;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v0, v6, Lcom/samsung/android/cover/CoverState;->type:I

    .line 54
    .local v0, "coverType":I
    packed-switch v0, :pswitch_data_0

    .line 63
    :pswitch_0
    sget v4, Lcom/sec/android/sviewcover/R$layout;->cover_popup_frame:I

    .line 67
    .local v4, "popupFrameLayout":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 68
    .local v3, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v3, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 70
    invoke-virtual {p1, p0, v9, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 73
    .end local v0    # "coverType":I
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    .end local v4    # "popupFrameLayout":I
    :cond_1
    sget v6, Lcom/sec/android/sviewcover/R$id;->popup_text:I

    invoke-virtual {p0, v6}, Lcom/sec/android/cover/widget/PopupFrameView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 74
    .local v5, "textView":Landroid/widget/TextView;
    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    sget v6, Lcom/sec/android/sviewcover/R$id;->popup_frame:I

    invoke-virtual {p0, v6}, Lcom/sec/android/cover/widget/PopupFrameView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 77
    .local v2, "frame":Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isLightTheme()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 78
    sget v6, Lcom/sec/android/sviewcover/R$drawable;->tw_toast_frame_holo_light:I

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 79
    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    :cond_2
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->requestAccessibilityFocus()Z

    .line 83
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 84
    new-instance v6, Lcom/sec/android/cover/widget/PopupFrameView$2;

    invoke-direct {v6, p0}, Lcom/sec/android/cover/widget/PopupFrameView$2;-><init>(Lcom/sec/android/cover/widget/PopupFrameView;)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    return-void

    .line 57
    .end local v2    # "frame":Landroid/widget/LinearLayout;
    .end local v5    # "textView":Landroid/widget/TextView;
    .restart local v0    # "coverType":I
    :pswitch_1
    sget v4, Lcom/sec/android/sviewcover/R$layout;->cover_popup_frame:I

    .line 58
    .restart local v4    # "popupFrameLayout":I
    goto :goto_0

    .line 60
    .end local v4    # "popupFrameLayout":I
    :pswitch_2
    sget v4, Lcom/sec/android/sviewcover/R$layout;->mini_cover_popup_frame:I

    .line 61
    .restart local v4    # "popupFrameLayout":I
    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
