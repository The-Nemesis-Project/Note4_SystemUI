.class Lcom/android/keyguard/sec/rich/SecAttributionInfoView$8;
.super Ljava/lang/Object;
.source "SecAttributionInfoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->updateAttributionInfoView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$8;->this$0:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$8;->this$0:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    # getter for: Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->access$1000(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$8;->this$0:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    # getter for: Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->access$1000(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$8;->this$0:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "keyguard_wu_wallpaper_info_landing_page_url"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const-string v1, "flickr.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$8;->this$0:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    # invokes: Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->launchBrowser(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->access$800(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;Ljava/lang/String;)V

    goto :goto_0
.end method
