.class Lcom/android/systemui/statusbar/phone/Ticker$1;
.super Ljava/lang/Object;
.source "Ticker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/Ticker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/Ticker;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/Ticker;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/Ticker$1;->this$0:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 282
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/Ticker$1;->this$0:Lcom/android/systemui/statusbar/phone/Ticker;

    # getter for: Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/Ticker;->access$200(Lcom/android/systemui/statusbar/phone/Ticker;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 283
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/Ticker$1;->this$0:Lcom/android/systemui/statusbar/phone/Ticker;

    # getter for: Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/Ticker;->access$200(Lcom/android/systemui/statusbar/phone/Ticker;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/Ticker$Segment;

    .line 285
    .local v1, "seg":Lcom/android/systemui/statusbar/phone/Ticker$Segment;
    iget-boolean v3, v1, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->first:Z

    if-eqz v3, :cond_0

    .line 289
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/Ticker$1;->this$0:Lcom/android/systemui/statusbar/phone/Ticker;

    # getter for: Lcom/android/systemui/statusbar/phone/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/Ticker;->access$300(Lcom/android/systemui/statusbar/phone/Ticker;)Landroid/widget/ImageSwitcher;

    move-result-object v3

    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 291
    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->advance()Ljava/lang/CharSequence;

    move-result-object v2

    .line 292
    .local v2, "text":Ljava/lang/CharSequence;
    if-nez v2, :cond_1

    .line 293
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/Ticker$1;->this$0:Lcom/android/systemui/statusbar/phone/Ticker;

    # getter for: Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/Ticker;->access$200(Lcom/android/systemui/statusbar/phone/Ticker;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 296
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "currentLanguage":Ljava/lang/String;
    const-string v3, "iw"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 298
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/Ticker$1;->this$0:Lcom/android/systemui/statusbar/phone/Ticker;

    # getter for: Lcom/android/systemui/statusbar/phone/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/Ticker;->access$000(Lcom/android/systemui/statusbar/phone/Ticker;)Landroid/widget/TextSwitcher;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u200e"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 303
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/Ticker$1;->this$0:Lcom/android/systemui/statusbar/phone/Ticker;

    # invokes: Lcom/android/systemui/statusbar/phone/Ticker;->scheduleAdvance()V
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/Ticker;->access$400(Lcom/android/systemui/statusbar/phone/Ticker;)V

    .line 306
    .end local v0    # "currentLanguage":Ljava/lang/String;
    .end local v1    # "seg":Lcom/android/systemui/statusbar/phone/Ticker$Segment;
    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/Ticker$1;->this$0:Lcom/android/systemui/statusbar/phone/Ticker;

    # getter for: Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/Ticker;->access$200(Lcom/android/systemui/statusbar/phone/Ticker;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 307
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/Ticker$1;->this$0:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/Ticker;->tickerDone()V

    .line 309
    :cond_3
    return-void

    .line 300
    .restart local v0    # "currentLanguage":Ljava/lang/String;
    .restart local v1    # "seg":Lcom/android/systemui/statusbar/phone/Ticker$Segment;
    .restart local v2    # "text":Ljava/lang/CharSequence;
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/Ticker$1;->this$0:Lcom/android/systemui/statusbar/phone/Ticker;

    # getter for: Lcom/android/systemui/statusbar/phone/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/Ticker;->access$000(Lcom/android/systemui/statusbar/phone/Ticker;)Landroid/widget/TextSwitcher;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
