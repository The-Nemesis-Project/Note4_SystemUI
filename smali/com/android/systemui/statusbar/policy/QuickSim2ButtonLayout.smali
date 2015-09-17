.class public Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;
.super Landroid/widget/LinearLayout;
.source "QuickSim2ButtonLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field private static final QuickpanelSimImage:[I

.field private static final TAG:Ljava/lang/String; = "QuickSim2Button"


# instance fields
.field private carrierText:Ljava/lang/String;

.field private currSimId:I

.field private mAirplaneMode:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mNetworkNameDefault:Ljava/lang/String;

.field private mNetworkNameSeparator:Ljava/lang/String;

.field private mPlmn:Ljava/lang/String;

.field private mQuickSim2CarrierText:Landroid/widget/TextView;

.field private mQuickSim2Icon:Landroid/widget/ImageView;

.field private mQuickSim2Text:Landroid/widget/TextView;

.field private mShowPlmn:Z

.field private mShowSpn:Z

.field private mSpn:Ljava/lang/String;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private phoneId:I

.field private simActive:I

.field private subId:J

.field private telephonyManager:Landroid/telephony/TelephonyManager;

.field private useSubID:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->QuickpanelSimImage:[I

    return-void

    :array_0
    .array-data 4
        0x7f0202c7
        0x7f0202c8
        0x7f0202c0
        0x7f0202c6
        0x7f0202c4
        0x7f0202c3
        0x7f0202c2
        0x7f0202c5
        0x7f0202c1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 136
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mAirplaneMode:I

    .line 65
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;-><init>(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->subId:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;
    .param p1, "x1"    # J

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->subId:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    .prologue
    .line 31
    iget v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->phoneId:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    .prologue
    .line 31
    iget v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mAirplaneMode:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mAirplaneMode:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->phoneId:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->updateDualSimUiBySettings(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2Text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mNetworkNameDefault:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mNetworkNameDefault:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->carrierText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->carrierText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;J)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;
    .param p1, "x1"    # J

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->getPhoneId(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mShowSpn:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mShowSpn:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mSpn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mSpn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mShowPlmn:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mShowPlmn:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mPlmn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mPlmn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    .prologue
    .line 31
    iget v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->currSimId:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->currSimId:I

    return p1
.end method

.method private getPhoneId(J)I
    .locals 1
    .param p1, "subId"    # J

    .prologue
    .line 219
    invoke-static {p1, p2}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v0

    .line 220
    .local v0, "phoneIdLocal":I
    return v0
.end method

.method private isIdleBothSIM()Z
    .locals 4

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->telephonyManager:Landroid/telephony/TelephonyManager;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/telephony/TelephonyManager;->isIdle(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->telephonyManager:Landroid/telephony/TelephonyManager;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/telephony/TelephonyManager;->isIdle(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    const-string v0, "QuickSim2Button"

    const-string v1, "isIdle both SIM : true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/4 v0, 0x1

    .line 304
    :goto_0
    return v0

    .line 302
    :cond_0
    const-string v0, "QuickSim2Button"

    const-string v1, "isIdle both SIM : false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateDualSimUiBySettings(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "simIndex"    # I
    .param p2, "imageIndex"    # Ljava/lang/String;
    .param p3, "simName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 310
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 311
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 312
    .local v0, "iconIndex":I
    if-ne p1, v3, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2Icon:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2Icon:Landroid/widget/ImageView;

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->QuickpanelSimImage:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 318
    .end local v0    # "iconIndex":I
    :cond_0
    if-eqz p3, :cond_1

    .line 319
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CTC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 320
    if-ne p1, v3, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2CarrierText:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 321
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2CarrierText:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    :cond_1
    :goto_0
    return-void

    .line 324
    :cond_2
    if-ne p1, v3, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2Text:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 325
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2Text:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 5
    .param p1, "showSpn"    # Z
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "showPlmn"    # Z
    .param p4, "plmn"    # Ljava/lang/String;

    .prologue
    .line 400
    const-string v2, "QuickSim2Button"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateNetworkName showSpn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " spn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " showPlmn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " plmn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 403
    .local v1, "str":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 404
    .local v0, "something":Z
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 405
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    const/4 v0, 0x1

    .line 408
    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 409
    if-eqz v0, :cond_1

    .line 410
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    :cond_1
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    const/4 v0, 0x1

    .line 415
    :cond_2
    if-eqz v0, :cond_4

    .line 416
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->carrierText:Ljava/lang/String;

    .line 421
    :goto_0
    const-string v2, "QuickSim2Button"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "carrierText : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->carrierText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CTC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 424
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->carrierText:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->setMultisimCarrierText(Ljava/lang/String;I)V

    .line 426
    :cond_3
    return-void

    .line 418
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->carrierText:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 141
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 142
    const-string v4, "QuickSim2Button"

    const-string v5, "onAttachedToWindow()"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const v4, 0x7f0e01c9

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2Text:Landroid/widget/TextView;

    .line 145
    const v4, 0x7f0e01ca

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2CarrierText:Landroid/widget/TextView;

    .line 146
    const v4, 0x7f0e01c8

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2Icon:Landroid/widget/ImageView;

    .line 148
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    const v5, 0x104037c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mNetworkNameDefault:Ljava/lang/String;

    .line 150
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    const v5, 0x7f0d01f6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mNetworkNameSeparator:Ljava/lang/String;

    .line 152
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "select_icon_2"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 153
    .local v1, "iconIndex":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "select_name_2"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 154
    .local v3, "simName":Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CTC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 155
    if-eqz v3, :cond_0

    .line 156
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2CarrierText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2Text:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    const v6, 0x7f0d01ca

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2Icon:Landroid/widget/ImageView;

    sget-object v5, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->QuickpanelSimImage:[I

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 170
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 173
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 174
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    const-string v4, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    const-string v4, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    const-string v4, "android.settings.SIMCARD_MGT"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    const-string v4, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 182
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "phone2_on"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 183
    .local v2, "simActive":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->currSimId:I

    .line 185
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mAirplaneMode:I

    .line 188
    iget v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mAirplaneMode:I

    if-ne v4, v7, :cond_3

    .line 189
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->setDeactiveSimUI()V

    .line 199
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    const-string v5, "statusbar"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 200
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 201
    return-void

    .line 158
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "simActive":I
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2CarrierText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 162
    :cond_1
    if-eqz v3, :cond_2

    .line 163
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2Text:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 165
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2Text:Landroid/widget/TextView;

    const-string v5, "SIM 2"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 190
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    .restart local v2    # "simActive":I
    :cond_3
    if-nez v2, :cond_4

    .line 191
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->setDeselectedSimUI()V

    goto :goto_2

    .line 193
    :cond_4
    iget v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->currSimId:I

    if-ne v4, v7, :cond_5

    .line 194
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->setSelectedSimUI()V

    goto :goto_2

    .line 196
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->setDeselectedSimUI()V

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 227
    iget v2, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mAirplaneMode:I

    if-ne v2, v6, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "phone2_on"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->simActive:I

    .line 235
    const-string v2, "QuickSim2Button"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick 1 simActive="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->simActive:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget v2, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->simActive:I

    if-ne v2, v6, :cond_0

    .line 240
    const/4 v2, 0x2

    new-array v2, v2, [J

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->useSubID:[J

    .line 241
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v2

    int-to-long v0, v2

    .line 242
    .local v0, "currPhoneID":J
    const-string v2, "QuickSim2Button"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick 2 currPhoneID is = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_3

    .line 245
    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->useSubID:[J

    .line 248
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->isIdleBothSIM()Z

    move-result v2

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mIsCGGDuosCTC:Z

    if-eqz v2, :cond_4

    .line 249
    :cond_2
    const-string v2, "QuickSim2Button"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick 3 set voice SIM as SIM 2 useSubID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->useSubID:[J

    aget-wide v4, v4, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->useSubID:[J

    aget-wide v2, v2, v7

    invoke-static {v2, v3}, Landroid/telephony/SubscriptionManager;->setDefaultVoiceSubId(J)V

    .line 256
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_maincard"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 252
    :cond_4
    const-string v2, "QuickSim2Button"

    const-string v3, "onClick 3 Both SIM are not idle"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 213
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 214
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 205
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 206
    const-string v0, "QuickSim2Button"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 208
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 267
    const-string v1, "CTC"

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 268
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v1}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 272
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 273
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "QuickSim2Button"

    const-string v2, "onLongClick() SIM02"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 276
    const-string v1, "com.sec.android.app.simcardmanagement"

    const-string v2, "com.sec.android.app.simcardmanagement.dsnetwork"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    const-string v1, "showroaming"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 278
    const-string v1, "Booting"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 279
    const-string v1, "toDsnetwork"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 280
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 281
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 284
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public setActivateSimUI()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 372
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "phone2_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 373
    .local v0, "simActive":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->currSimId:I

    .line 375
    if-nez v0, :cond_0

    .line 376
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->setDeselectedSimUI()V

    .line 385
    :goto_0
    return-void

    .line 378
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->currSimId:I

    if-ne v1, v3, :cond_1

    .line 379
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->setSelectedSimUI()V

    goto :goto_0

    .line 381
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->setDeselectedSimUI()V

    goto :goto_0
.end method

.method public setDeactiveSimUI()V
    .locals 2

    .prologue
    .line 354
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->setEnabled(Z)V

    .line 357
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2Text:Landroid/widget/TextView;

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 358
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2CarrierText:Landroid/widget/TextView;

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 359
    return-void
.end method

.method public setDeselectedSimUI()V
    .locals 2

    .prologue
    .line 344
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->setEnabled(Z)V

    .line 347
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2Text:Landroid/widget/TextView;

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 348
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2CarrierText:Landroid/widget/TextView;

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 349
    return-void
.end method

.method public setFocusedSimUI()V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2Text:Landroid/widget/TextView;

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 367
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2CarrierText:Landroid/widget/TextView;

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 368
    return-void
.end method

.method public setMultisimCarrierText(Ljava/lang/String;I)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 288
    const-string v0, "QuickSim2Button"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMultisimCarrierText:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",phoneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2CarrierText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2CarrierText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    :cond_0
    return-void
.end method

.method public setSelectedSimUI()V
    .locals 2

    .prologue
    .line 334
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->setEnabled(Z)V

    .line 337
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2Text:Landroid/widget/TextView;

    const-string v1, "#bbff00"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 338
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2CarrierText:Landroid/widget/TextView;

    const-string v1, "#bbff00"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 339
    return-void
.end method

.method public updateAirplaneMode()V
    .locals 3

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mAirplaneMode:I

    .line 390
    const-string v0, "QuickSim2Button"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAirplaneMode - mAirplaneMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mAirplaneMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mAirplaneMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 393
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->setDeactiveSimUI()V

    .line 397
    :goto_0
    return-void

    .line 395
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->setActivateSimUI()V

    goto :goto_0
.end method
