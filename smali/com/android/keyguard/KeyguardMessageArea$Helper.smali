.class public Lcom/android/keyguard/KeyguardMessageArea$Helper;
.super Ljava/lang/Object;
.source "KeyguardMessageArea.java"

# interfaces
.implements Lcom/android/keyguard/SecurityMessageDisplay;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardMessageArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Helper"
.end annotation


# instance fields
.field mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    sget v0, Lcom/android/keyguard/R$id;->keyguard_message_area:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    .line 121
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    if-nez v0, :cond_0

    .line 122
    sget v0, Lcom/android/keyguard/R$id;->keyguard_message_area_bouncer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    if-nez v0, :cond_1

    .line 126
    sget v0, Lcom/android/keyguard/R$id;->keyguard_message_area_signature:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    if-nez v0, :cond_2

    .line 130
    sget v0, Lcom/android/keyguard/R$id;->keyguard_message_area_backup:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    if-nez v0, :cond_3

    .line 134
    sget v0, Lcom/android/keyguard/R$id;->keyguard_message_area_backup_pin_usa:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    .line 137
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    if-nez v0, :cond_4

    .line 138
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find keyguard_message_area in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_4
    return-void
.end method


# virtual methods
.method public hideBouncer(I)V
    .locals 2
    .param p1, "duration"    # I

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    # invokes: Lcom/android/keyguard/KeyguardMessageArea;->showMessage(I)V
    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->access$300(Lcom/android/keyguard/KeyguardMessageArea;I)V

    .line 197
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingBouncer:Z

    .line 198
    return-void
.end method

.method public removeShortcutMessage()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/keyguard/KeyguardMessageArea;->mShorcutMessage:Ljava/lang/CharSequence;

    .line 218
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    .line 219
    return-void
.end method

.method public setMessage(IIZ)V
    .locals 3
    .param p1, "resId"    # I
    .param p2, "iconResId"    # I
    .param p3, "important"    # Z

    .prologue
    const/4 v2, 0x0

    .line 180
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    .line 182
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardMessageArea;->securityMessageChanged()V

    .line 183
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    iput p2, v0, Lcom/android/keyguard/KeyguardMessageArea;->mIcon:I

    .line 184
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0, p2, v2, v2, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 186
    :cond_0
    return-void
.end method

.method public setMessage(IZ)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "important"    # Z

    .prologue
    .line 164
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    .line 166
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/keyguard/KeyguardMessageArea;->mIcon:I

    .line 167
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardMessageArea;->securityMessageChanged()V

    .line 169
    :cond_0
    return-void
.end method

.method public varargs setMessage(IZ[Ljava/lang/Object;)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "important"    # Z
    .param p3, "formatArgs"    # [Ljava/lang/Object;

    .prologue
    .line 172
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    .line 174
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/keyguard/KeyguardMessageArea;->mIcon:I

    .line 175
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardMessageArea;->securityMessageChanged()V

    .line 177
    :cond_0
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;IZ)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "iconResId"    # I
    .param p3, "important"    # Z

    .prologue
    const/4 v1, 0x0

    .line 155
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    iput-object p1, v0, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    .line 157
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    iput p2, v0, Lcom/android/keyguard/KeyguardMessageArea;->mIcon:I

    .line 158
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardMessageArea;->securityMessageChanged()V

    .line 159
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0, p2, v1, v1, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 161
    :cond_0
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "important"    # Z

    .prologue
    .line 147
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    iput-object p1, v0, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    .line 149
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/keyguard/KeyguardMessageArea;->mIcon:I

    .line 150
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardMessageArea;->securityMessageChanged()V

    .line 152
    :cond_0
    return-void
.end method

.method public setMessageAreaVisiblity(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    if-nez v0, :cond_0

    .line 232
    :goto_0
    return-void

    .line 227
    :cond_0
    if-eqz p1, :cond_1

    .line 228
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    goto :goto_0

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    goto :goto_0
.end method

.method public setShortcutMessage(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 207
    if-lez p1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 209
    .local v0, "msg":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v0, v1, Lcom/android/keyguard/KeyguardMessageArea;->mShorcutMessage:Ljava/lang/CharSequence;

    .line 211
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    .line 214
    .end local v0    # "msg":Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method public setShortcutMessageLayout()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    # invokes: Lcom/android/keyguard/KeyguardMessageArea;->setShortcutReleasedLayout()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardMessageArea;->access$200(Lcom/android/keyguard/KeyguardMessageArea;)V

    .line 144
    return-void
.end method

.method public setTimeout(I)V
    .locals 4
    .param p1, "timeoutMs"    # I

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    int-to-long v2, p1

    iput-wide v2, v0, Lcom/android/keyguard/KeyguardMessageArea;->mTimeout:J

    .line 203
    return-void
.end method

.method public showBouncer(I)V
    .locals 2
    .param p1, "duration"    # I

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v1, 0x0

    # invokes: Lcom/android/keyguard/KeyguardMessageArea;->hideMessage(IZ)V
    invoke-static {v0, p1, v1}, Lcom/android/keyguard/KeyguardMessageArea;->access$000(Lcom/android/keyguard/KeyguardMessageArea;IZ)V

    .line 191
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingBouncer:Z

    .line 192
    return-void
.end method
