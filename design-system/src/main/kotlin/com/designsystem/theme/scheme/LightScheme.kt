package com.designsystem.theme.scheme

import androidx.compose.material3.lightColorScheme
import com.designsystem.theme.color.backgroundLight
import com.designsystem.theme.color.errorContainerLight
import com.designsystem.theme.color.errorLight
import com.designsystem.theme.color.onBackgroundLight
import com.designsystem.theme.color.onErrorContainerLight
import com.designsystem.theme.color.onErrorLight
import com.designsystem.theme.color.onPrimaryContainerLight
import com.designsystem.theme.color.onPrimaryLight
import com.designsystem.theme.color.onSecondaryContainerLight
import com.designsystem.theme.color.onSecondaryLight
import com.designsystem.theme.color.onTertiaryContainerLight
import com.designsystem.theme.color.onTertiaryLight
import com.designsystem.theme.color.primaryContainerLight
import com.designsystem.theme.color.primaryLight
import com.designsystem.theme.color.secondaryContainerLight
import com.designsystem.theme.color.secondaryLight
import com.designsystem.theme.color.tertiaryContainerLight
import com.designsystem.theme.color.tertiaryLight

internal val lightScheme = lightColorScheme(
    primary = primaryLight,
    onPrimary = onPrimaryLight,
    primaryContainer = primaryContainerLight,
    onPrimaryContainer = onPrimaryContainerLight,
    secondary = secondaryLight,
    onSecondary = onSecondaryLight,
    secondaryContainer = secondaryContainerLight,
    onSecondaryContainer = onSecondaryContainerLight,
    tertiary = tertiaryLight,
    onTertiary = onTertiaryLight,
    tertiaryContainer = tertiaryContainerLight,
    onTertiaryContainer = onTertiaryContainerLight,
    error = errorLight,
    onError = onErrorLight,
    errorContainer = errorContainerLight,
    onErrorContainer = onErrorContainerLight,
    background = backgroundLight,
    onBackground = onBackgroundLight,
)
