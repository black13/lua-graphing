/*
 * Copyright © 2010 Codethink Limited
 *
 * This library is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as
 * published by the Free Software Foundation; either version 2 of the
 * licence, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307,
 * USA.
 *
 * Author: Ryan Lortie <desrt@desrt.ca>
 */

#if defined(G_DISABLE_SINGLE_INCLUDES) && !defined (__GLIB_H_INSIDE__) && !defined (GLIB_COMPILATION)
#error "Only <glib.h> can be included directly."
#endif

#ifndef __G_TIME_ZONE_H__
#define __G_TIME_ZONE_H__

#include <glib/gtypes.h>

G_BEGIN_DECLS

typedef struct _GTimeZone GTimeZone;

/**
 * GTimeType:
 * @G_TIME_TYPE_STANDARD: the time is in local standard time
 * @G_TIME_TYPE_DAYLIGHT: the time is in local daylight time
 * @G_TIME_TYPE_UNIVERSAL: the time is in UTC
 *
 * Disambiguates a given time in two ways.
 *
 * First, specifies if the given time is in universal or local time.
 *
 * Second, if the time is in local time, specifies if it is local
 * standard time or local daylight time.  This is important for the case
 * where the same local time occurs twice (during daylight savings time
 * transitions, for example).
 */
typedef enum
{
  G_TIME_TYPE_STANDARD,
  G_TIME_TYPE_DAYLIGHT,
  G_TIME_TYPE_UNIVERSAL
} GTimeType;

GTimeZone *             g_time_zone_new                                 (const gchar *identifier);
GTimeZone *             g_time_zone_new_utc                             (void);
GTimeZone *             g_time_zone_new_local                           (void);

GTimeZone *             g_time_zone_ref                                 (GTimeZone   *tz);
void                    g_time_zone_unref                               (GTimeZone   *tz);

gint                    g_time_zone_find_interval                       (GTimeZone   *tz,
                                                                         GTimeType    type,
                                                                         gint64       time);

gint                    g_time_zone_adjust_time                         (GTimeZone   *tz,
                                                                         GTimeType    type,
                                                                         gint64      *time);

const gchar *           g_time_zone_get_abbreviation                    (GTimeZone   *tz,
                                                                         gint         interval);
gint32                  g_time_zone_get_offset                          (GTimeZone   *tz,
                                                                         gint         interval);
gboolean                g_time_zone_is_dst                              (GTimeZone   *tz,
                                                                         gint         interval);

G_END_DECLS

#endif /* __G_TIME_ZONE_H__ */
