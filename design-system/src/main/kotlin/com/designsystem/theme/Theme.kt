package com.designsystem.theme

import androidx.compose.foundation.isSystemInDarkTheme
import androidx.compose.material3.MaterialTheme
import androidx.compose.runtime.Composable
import com.designsystem.theme.scheme.darkScheme
import com.designsystem.theme.scheme.lightScheme
import com.designsystem.theme.typography.Typography


@Composable
fun Theme(
    content: @Composable () -> Unit,
) {
    MaterialTheme(
        colorScheme = if (isSystemInDarkTheme()) {
            darkScheme
        } else {
            lightScheme
        },
        typography = Typography,
        content = content
    )
}
