.class public abstract Lcom/android/systemui/statusbar/phone/Ticker;
.super Ljava/lang/Object;
.source "Ticker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/Ticker$Segment;
    }
.end annotation


# static fields
.field private static final LEFT_TO_RIGHT_UNICODE:Ljava/lang/String; = "\u200e"

.field private static final TICKER_SEGMENT_DELAY:I = 0xbb8


# instance fields
.field private mAdvanceTicker:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIconScale:F

.field private mIconSwitcher:Landroid/widget/ImageSwitcher;

.field private mPaint:Landroid/text/TextPaint;

.field private mSegments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/Ticker$Segment;",
            ">;"
        }
    .end annotation
.end field

.field private mTextSwitcher:Landroid/widget/TextSwitcher;

.field private mTickerView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 8

    const v7, 0x10a0074

    const v6, 0x10a0073

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mHandler:Landroid/os/Handler;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/systemui/statusbar/phone/Ticker$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/Ticker$1;-><init>(Lcom/android/systemui/statusbar/phone/Ticker;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mAdvanceTicker:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0298

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v4, 0x7f0c029e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v4, v0

    int-to-float v5, v1

    div-float/2addr v4, v5

    iput v4, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mIconScale:F

    const v4, 0x7f0e01ab

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mTickerView:Landroid/view/View;

    const v4, 0x7f0e03a8

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageSwitcher;

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    invoke-static {p1, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    invoke-static {p1, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mIconScale:F

    invoke-virtual {v4, v5}, Landroid/widget/ImageSwitcher;->setScaleX(F)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mIconScale:F

    invoke-virtual {v4, v5}, Landroid/widget/ImageSwitcher;->setScaleY(F)V

    const v4, 0x7f0e03a9

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextSwitcher;

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-static {p1, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-static {p1, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mPaint:Landroid/text/TextPaint;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/Ticker;)Landroid/widget/TextSwitcher;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/Ticker;)Landroid/text/TextPaint;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/Ticker;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/Ticker;)Landroid/widget/ImageSwitcher;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/Ticker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/Ticker;->scheduleAdvance()V

    return-void
.end method

.method private static charSequencesEqual(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 5

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-eq v3, v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isGraphicOrEmoji(C)Z
    .locals 2

    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private scheduleAdvance()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mAdvanceTicker:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public addEntry(Landroid/service/notification/StatusBarNotification;)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/systemui/statusbar/phone/Ticker$Segment;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->icon:I

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->icon:I

    if-ne v3, v4, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->iconLevel:I

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->iconLevel:I

    if-ne v3, v4, :cond_1

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->notification:Landroid/service/notification/StatusBarNotification;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/phone/Ticker;->getTickerText(Landroid/service/notification/StatusBarNotification;Z)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/statusbar/phone/Ticker;->getTickerText(Landroid/service/notification/StatusBarNotification;Z)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/Ticker;->charSequencesEqual(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/Ticker;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    new-instance v3, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget v6, v6, Landroid/app/Notification;->icon:I

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget v7, v7, Landroid/app/Notification;->iconLevel:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Lcom/android/systemui/statusbar/phone/Ticker;->getTickerText(Landroid/service/notification/StatusBarNotification;Z)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/statusbar/phone/Ticker;->getTickerText(Landroid/service/notification/StatusBarNotification;Z)Ljava/lang/CharSequence;

    move-result-object v17

    new-instance v15, Lcom/android/systemui/statusbar/phone/Ticker$Segment;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v15, v0, v1, v13, v2}, Lcom/android/systemui/statusbar/phone/Ticker$Segment;-><init>(Lcom/android/systemui/statusbar/phone/Ticker;Landroid/service/notification/StatusBarNotification;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    const/4 v11, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v11, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/systemui/statusbar/phone/Ticker$Segment;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    if-ne v3, v4, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    add-int/lit8 v12, v11, -0x1

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v11, v12

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/systemui/statusbar/phone/Ticker$Segment;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->first:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageSwitcher;->setAnimateFirstView(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v3}, Landroid/widget/ImageSwitcher;->reset()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextSwitcher;->setAnimateFirstView(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v3}, Landroid/widget/TextSwitcher;->reset()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    const-string v3, "iw"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u200e"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/Ticker;->tickerStarting()V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/Ticker;->scheduleAdvance()V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method protected getTickerText(Landroid/service/notification/StatusBarNotification;Z)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public halt()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mAdvanceTicker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/Ticker;->tickerHalting()V

    return-void
.end method

.method public reflowText()V
    .locals 6

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/Ticker$Segment;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "iw"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u200e"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextSwitcher;->setCurrentText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v3, v2}, Landroid/widget/TextSwitcher;->setCurrentText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public removeEntry(Landroid/service/notification/StatusBarNotification;)V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/Ticker$Segment;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public abstract tickerDone()V
.end method

.method public abstract tickerHalting()V
.end method

.method public abstract tickerStarting()V
.end method
