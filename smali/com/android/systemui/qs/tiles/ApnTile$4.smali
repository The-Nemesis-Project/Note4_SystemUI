.class Lcom/android/systemui/qs/tiles/ApnTile$4;
.super Landroid/telephony/PhoneStateListener;
.source "ApnTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/ApnTile;->getPhoneStateListener(JI)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ApnTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/ApnTile;J)V
    .locals 0
    .param p2, "x0"    # J

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ApnTile$4;->this$0:Lcom/android/systemui/qs/tiles/ApnTile;

    invoke-direct {p0, p2, p3}, Landroid/telephony/PhoneStateListener;-><init>(J)V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 299
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile$4;->this$0:Lcom/android/systemui/qs/tiles/ApnTile;

    iget-wide v2, p0, Lcom/android/systemui/qs/tiles/ApnTile$4;->mSubId:J

    # invokes: Lcom/android/systemui/qs/tiles/ApnTile;->getPhoneId(J)I
    invoke-static {v1, v2, v3}, Lcom/android/systemui/qs/tiles/ApnTile;->access$800(Lcom/android/systemui/qs/tiles/ApnTile;J)I

    move-result v0

    .line 300
    .local v0, "phoneId":I
    packed-switch p1, :pswitch_data_0

    .line 309
    :goto_0
    :pswitch_0
    return-void

    .line 303
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile$4;->this$0:Lcom/android/systemui/qs/tiles/ApnTile;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ApnTile$4;->this$0:Lcom/android/systemui/qs/tiles/ApnTile;

    # invokes: Lcom/android/systemui/qs/tiles/ApnTile;->getMobileData()Z
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/ApnTile;->access$400(Lcom/android/systemui/qs/tiles/ApnTile;)Z

    move-result v2

    # setter for: Lcom/android/systemui/qs/tiles/ApnTile;->mMobileData:Z
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/ApnTile;->access$102(Lcom/android/systemui/qs/tiles/ApnTile;Z)Z

    .line 304
    const-string v1, "ApnTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataConnectionStateChanged: -mMobileData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ApnTile$4;->this$0:Lcom/android/systemui/qs/tiles/ApnTile;

    # getter for: Lcom/android/systemui/qs/tiles/ApnTile;->mMobileData:Z
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/ApnTile;->access$100(Lcom/android/systemui/qs/tiles/ApnTile;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile$4;->this$0:Lcom/android/systemui/qs/tiles/ApnTile;

    # invokes: Lcom/android/systemui/qs/tiles/ApnTile;->updateActivateStatus()V
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ApnTile;->access$200(Lcom/android/systemui/qs/tiles/ApnTile;)V

    goto :goto_0

    .line 300
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 290
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile$4;->this$0:Lcom/android/systemui/qs/tiles/ApnTile;

    iget-wide v2, p0, Lcom/android/systemui/qs/tiles/ApnTile$4;->mSubId:J

    # invokes: Lcom/android/systemui/qs/tiles/ApnTile;->getPhoneId(J)I
    invoke-static {v1, v2, v3}, Lcom/android/systemui/qs/tiles/ApnTile;->access$800(Lcom/android/systemui/qs/tiles/ApnTile;J)I

    move-result v0

    .line 291
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile$4;->this$0:Lcom/android/systemui/qs/tiles/ApnTile;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ApnTile$4;->this$0:Lcom/android/systemui/qs/tiles/ApnTile;

    # invokes: Lcom/android/systemui/qs/tiles/ApnTile;->getMobileData()Z
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/ApnTile;->access$400(Lcom/android/systemui/qs/tiles/ApnTile;)Z

    move-result v2

    # setter for: Lcom/android/systemui/qs/tiles/ApnTile;->mMobileData:Z
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/ApnTile;->access$102(Lcom/android/systemui/qs/tiles/ApnTile;Z)Z

    .line 292
    const-string v1, "ApnTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceStateChanged: -mMobileData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ApnTile$4;->this$0:Lcom/android/systemui/qs/tiles/ApnTile;

    # getter for: Lcom/android/systemui/qs/tiles/ApnTile;->mMobileData:Z
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/ApnTile;->access$100(Lcom/android/systemui/qs/tiles/ApnTile;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile$4;->this$0:Lcom/android/systemui/qs/tiles/ApnTile;

    # invokes: Lcom/android/systemui/qs/tiles/ApnTile;->updateActivateStatus()V
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ApnTile;->access$200(Lcom/android/systemui/qs/tiles/ApnTile;)V

    .line 295
    return-void
.end method
