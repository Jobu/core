<?php

/**
 * Contao Open Source CMS
 *
 * Copyright (c) 2005-2015 Leo Feyer
 *
 * @license LGPL-3.0+
 */

namespace Contao;


/**
 * Reads and writes events
 *
 * @property integer $id
 * @property integer $pid
 * @property integer $tstamp
 * @property string  $title
 * @property string  $alias
 * @property integer $author
 * @property boolean $addTime
 * @property integer $startTime
 * @property integer $endTime
 * @property integer $startDate
 * @property integer $endDate
 * @property string  $location
 * @property string  $teaser
 * @property boolean $addImage
 * @property string  $singleSRC
 * @property string  $alt
 * @property string  $size
 * @property string  $imagemargin
 * @property string  $imageUrl
 * @property boolean $fullsize
 * @property string  $caption
 * @property string  $floating
 * @property boolean $recurring
 * @property string  $repeatEach
 * @property integer $repeatEnd
 * @property integer $recurrences
 * @property boolean $addEnclosure
 * @property string  $enclosure
 * @property string  $source
 * @property integer $jumpTo
 * @property integer $articleId
 * @property string  $url
 * @property boolean $target
 * @property string  $cssClass
 * @property boolean $noComments
 * @property boolean $published
 * @property string  $start
 * @property string  $stop
 *
 * @method static $this findById($id, $opt=array())
 * @method static $this findByPk($id, $opt=array())
 * @method static $this findByIdOrAlias($val, $opt=array())
 * @method static $this findOneBy($col, $val, $opt=array())
 * @method static $this findOneByPid($val, $opt=array())
 * @method static $this findOneByTstamp($val, $opt=array())
 * @method static $this findOneByTitle($val, $opt=array())
 * @method static $this findOneByAlias($val, $opt=array())
 * @method static $this findOneByAuthor($val, $opt=array())
 * @method static $this findOneByAddTime($val, $opt=array())
 * @method static $this findOneByStartTime($val, $opt=array())
 * @method static $this findOneByEndTime($val, $opt=array())
 * @method static $this findOneByStartDate($val, $opt=array())
 * @method static $this findOneByEndDate($val, $opt=array())
 * @method static $this findOneByLocation($val, $opt=array())
 * @method static $this findOneByTeaser($val, $opt=array())
 * @method static $this findOneByAddImage($val, $opt=array())
 * @method static $this findOneBySingleSRC($val, $opt=array())
 * @method static $this findOneByAlt($val, $opt=array())
 * @method static $this findOneBySize($val, $opt=array())
 * @method static $this findOneByImagemargin($val, $opt=array())
 * @method static $this findOneByImageUrl($val, $opt=array())
 * @method static $this findOneByFullsize($val, $opt=array())
 * @method static $this findOneByCaption($val, $opt=array())
 * @method static $this findOneByFloating($val, $opt=array())
 * @method static $this findOneByRecurring($val, $opt=array())
 * @method static $this findOneByRepeatEach($val, $opt=array())
 * @method static $this findOneByRepeatEnd($val, $opt=array())
 * @method static $this findOneByRecurrences($val, $opt=array())
 * @method static $this findOneByAddEnclosure($val, $opt=array())
 * @method static $this findOneByEnclosure($val, $opt=array())
 * @method static $this findOneBySource($val, $opt=array())
 * @method static $this findOneByJumpTo($val, $opt=array())
 * @method static $this findOneByArticleId($val, $opt=array())
 * @method static $this findOneByUrl($val, $opt=array())
 * @method static $this findOneByTarget($val, $opt=array())
 * @method static $this findOneByCssClass($val, $opt=array())
 * @method static $this findOneByNoComments($val, $opt=array())
 * @method static $this findOneByPublished($val, $opt=array())
 * @method static $this findOneByStart($val, $opt=array())
 * @method static $this findOneByStop($val, $opt=array())
 *
 * @method static \Model\Collection|\CalendarEventsModel findByPid($val, $opt=array())
 * @method static \Model\Collection|\CalendarEventsModel findByTstamp($val, $opt=array())
 * @method static \Model\Collection|\CalendarEventsModel findByTitle($val, $opt=array())
 * @method static \Model\Collection|\CalendarEventsModel findByAlias($val, $opt=array())
 * @method static \Model\Collection|\CalendarEventsModel findByAuthor($val, $opt=array())
 * @method static \Model\Collection|\CalendarEventsModel findByAddTime($val, $opt=array())
 * @method static \Model\Collection|\CalendarEventsModel findByStartTime($val, $opt=array())
 * @method static \Model\Collection|\CalendarEventsModel findByEndTime($val, $opt=array())
 * @method static \Model\Collection|\CalendarEventsModel findByStartDate($val, $opt=array())
 * @method static \Model\Collection|\CalendarEventsModel findByEndDate($val, $opt=array())
 * @method static \Model\Collection|\CalendarEventsModel findByLocation($val, $opt=array())
 * @method static \Model\Collection|\CalendarEventsModel findByTeaser($val, $opt=array())
 * @method static \Model\Collection|\CalendarEventsModel findByAddImage($val, $opt=array())
 * @method static \Model\Collection|\CalendarEventsModel findBySingleSRC($val, $opt=array())
 * @method static \Model\Collection|\CalendarEventsModel findByAlt($val, $opt=array())
 * @method static \Model\Collection|\CalendarEventsModel findBySize($val, $opt=array())
 * @method static \Model\Collection|\CalendarEventsModel findByImagemargin($val, $opt=array())
 * @method static \Model\Collection|\CalendarEventsModel findByImageUrl($val, $opt=array())
 * @method static \Model\Collection|\CalendarEventsModel findByFullsize($val, $opt=array())
 * @method static \Model\Collection|\CalendarEventsModel findByCaption($val, $opt=array())
 * @method static \Model\Collection|\CalendarEventsModel findByFloating($val, $opt=array())
 * @method static \Model\Collection|\CalendarEventsModel findByRecurring($val, $opt=array())
 * @method static \Model\Collection|\CalendarEventsModel findByRepeatEach($val, $opt=array())
 * @method static \Model\Collection|\CalendarEventsModel findByRepeatEnd($val, $opt=array())
 * @method static \Model\Collection|\CalendarEventsModel findByRecurrences($val, $opt=array())
 * @method static \Model\Collection|\CalendarEventsModel findByAddEnclosure($val, $opt=array())
 * @method static \Model\Collection|\CalendarEventsModel findByEnclosure($val, $opt=array())
 * @method static \Model\Collection|\CalendarEventsModel findBySource($val, $opt=array())
 * @method static \Model\Collection|\CalendarEventsModel findByJumpTo($val, $opt=array())
 * @method static \Model\Collection|\CalendarEventsModel findByArticleId($val, $opt=array())
 * @method static \Model\Collection|\CalendarEventsModel findByUrl($val, $opt=array())
 * @method static \Model\Collection|\CalendarEventsModel findByTarget($val, $opt=array())
 * @method static \Model\Collection|\CalendarEventsModel findByCssClass($val, $opt=array())
 * @method static \Model\Collection|\CalendarEventsModel findByNoComments($val, $opt=array())
 * @method static \Model\Collection|\CalendarEventsModel findByPublished($val, $opt=array())
 * @method static \Model\Collection|\CalendarEventsModel findByStart($val, $opt=array())
 * @method static \Model\Collection|\CalendarEventsModel findByStop($val, $opt=array())
 * @method static \Model\Collection|\CalendarEventsModel findMultipleByIds($val, $opt=array())
 * @method static \Model\Collection|\CalendarEventsModel findBy($col, $val, $opt=array())
 * @method static \Model\Collection|\CalendarEventsModel findAll($opt=array())
 *
 * @method static integer countById($id, $opt=array())
 * @method static integer countByPid($val, $opt=array())
 * @method static integer countByTstamp($val, $opt=array())
 * @method static integer countByTitle($val, $opt=array())
 * @method static integer countByAlias($val, $opt=array())
 * @method static integer countByAuthor($val, $opt=array())
 * @method static integer countByAddTime($val, $opt=array())
 * @method static integer countByStartTime($val, $opt=array())
 * @method static integer countByEndTime($val, $opt=array())
 * @method static integer countByStartDate($val, $opt=array())
 * @method static integer countByEndDate($val, $opt=array())
 * @method static integer countByLocation($val, $opt=array())
 * @method static integer countByTeaser($val, $opt=array())
 * @method static integer countByAddImage($val, $opt=array())
 * @method static integer countBySingleSRC($val, $opt=array())
 * @method static integer countByAlt($val, $opt=array())
 * @method static integer countBySize($val, $opt=array())
 * @method static integer countByImagemargin($val, $opt=array())
 * @method static integer countByImageUrl($val, $opt=array())
 * @method static integer countByFullsize($val, $opt=array())
 * @method static integer countByCaption($val, $opt=array())
 * @method static integer countByFloating($val, $opt=array())
 * @method static integer countByRecurring($val, $opt=array())
 * @method static integer countByRepeatEach($val, $opt=array())
 * @method static integer countByRepeatEnd($val, $opt=array())
 * @method static integer countByRecurrences($val, $opt=array())
 * @method static integer countByAddEnclosure($val, $opt=array())
 * @method static integer countByEnclosure($val, $opt=array())
 * @method static integer countBySource($val, $opt=array())
 * @method static integer countByJumpTo($val, $opt=array())
 * @method static integer countByArticleId($val, $opt=array())
 * @method static integer countByUrl($val, $opt=array())
 * @method static integer countByTarget($val, $opt=array())
 * @method static integer countByCssClass($val, $opt=array())
 * @method static integer countByNoComments($val, $opt=array())
 * @method static integer countByPublished($val, $opt=array())
 * @method static integer countByStart($val, $opt=array())
 * @method static integer countByStop($val, $opt=array())
 *
 * @author Leo Feyer <https://github.com/leofeyer>
 */
class CalendarEventsModel extends \Model
{

	/**
	 * Table name
	 * @var string
	 */
	protected static $strTable = 'tl_calendar_events';


	/**
	 * Find a published event from one or more calendars by its ID or alias
	 *
	 * @param mixed $varId      The numeric ID or alias name
	 * @param array $arrPids    An array of calendar IDs
	 * @param array $arrOptions An optional options array
	 *
	 * @return static The model or null if there is no event
	 */
	public static function findPublishedByParentAndIdOrAlias($varId, $arrPids, array $arrOptions=array())
	{
		if (!is_array($arrPids) || empty($arrPids))
		{
			return null;
		}

		$t = static::$strTable;
		$arrColumns = array("($t.id=? OR $t.alias=?) AND $t.pid IN(" . implode(',', array_map('intval', $arrPids)) . ")");

		if (!BE_USER_LOGGED_IN)
		{
			$time = \Date::floorToMinute();
			$arrColumns[] = "($t.start='' OR $t.start<='$time') AND ($t.stop='' OR $t.stop>'" . ($time + 60) . "') AND $t.published='1'";
		}

		return static::findOneBy($arrColumns, array((is_numeric($varId) ? $varId : 0), $varId), $arrOptions);
	}


	/**
	 * Find events of the current period by their parent ID
	 *
	 * @param integer $intPid     The calendar ID
	 * @param integer $intStart   The start date as Unix timestamp
	 * @param integer $intEnd     The end date as Unix timestamp
	 * @param array   $arrOptions An optional options array
	 *
	 * @return \Model\Collection|\CalendarEventsModel|null A collection of models or null if there are no events
	 */
	public static function findCurrentByPid($intPid, $intStart, $intEnd, array $arrOptions=array())
	{
		$t = static::$strTable;
		$intStart = intval($intStart);
		$intEnd = intval($intEnd);

		$arrColumns = array("$t.pid=? AND (($t.startTime>=$intStart AND $t.startTime<=$intEnd) OR ($t.endTime>=$intStart AND $t.endTime<=$intEnd) OR ($t.startTime<=$intStart AND $t.endTime>=$intEnd) OR ($t.recurring='1' AND ($t.recurrences=0 OR $t.repeatEnd>=$intStart) AND $t.startTime<=$intEnd))");

		if (!BE_USER_LOGGED_IN)
		{
			$time = \Date::floorToMinute();
			$arrColumns[] = "($t.start='' OR $t.start<='$time') AND ($t.stop='' OR $t.stop>'" . ($time + 60) . "') AND $t.published='1'";
		}

		if (!isset($arrOptions['order']))
		{
			$arrOptions['order']  = "$t.startTime";
		}

		return static::findBy($arrColumns, $intPid, $arrOptions);
	}


	/**
	 * Find published events with the default redirect target by their parent ID
	 *
	 * @param integer $intPid     The calendar ID
	 * @param array   $arrOptions An optional options array
	 *
	 * @return \Model\Collection|\CalendarEventsModel|null A collection of models or null if there are no events
	 */
	public static function findPublishedDefaultByPid($intPid, array $arrOptions=array())
	{
		$t = static::$strTable;
		$arrColumns = array("$t.pid=? AND $t.source='default'");

		if (!BE_USER_LOGGED_IN)
		{
			$time = \Date::floorToMinute();
			$arrColumns[] = "($t.start='' OR $t.start<='$time') AND ($t.stop='' OR $t.stop>'" . ($time + 60) . "') AND $t.published='1'";
		}

		if (!isset($arrOptions['order']))
		{
			$arrOptions['order']  = "$t.startTime DESC";
		}

		return static::findBy($arrColumns, $intPid, $arrOptions);
	}


	/**
	 * Find upcoming events by their parent IDs
	 *
	 * @param array   $arrIds     An array of calendar IDs
	 * @param integer $intLimit   An optional limit
	 * @param array   $arrOptions An optional options array
	 *
	 * @return \Model\Collection|\CalendarEventsModel|null A collection of models or null if there are no events
	 */
	public static function findUpcomingByPids($arrIds, $intLimit=0, array $arrOptions=array())
	{
		if (!is_array($arrIds) || empty($arrIds))
		{
			return null;
		}

		$t = static::$strTable;
		$time = \Date::floorToMinute();

		// Get upcoming events using endTime instead of startTime (see #3917)
		$arrColumns = array("($t.endTime>=$time OR ($t.recurring='1' AND ($t.recurrences=0 OR $t.repeatEnd>=$time))) AND $t.pid IN(" . implode(',', array_map('intval', $arrIds)) . ") AND ($t.start='' OR $t.start<='$time') AND ($t.stop='' OR $t.stop>'" . ($time + 60) . "') AND $t.published='1'");

		if ($intLimit > 0)
		{
			$arrOptions['limit'] = $intLimit;
		}

		if (!isset($arrOptions['order']))
		{
			$arrOptions['order'] = "$t.startTime";
		}

		return static::findBy($arrColumns, null, $arrOptions);
	}
}
