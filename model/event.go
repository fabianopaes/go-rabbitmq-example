package model

import "time"

type ActionType string

type Event struct {
	Action      ActionType `json:"action"`
	ExecutionID string     `json:"executionId"`
	Date        *time.Time `json:"executionDate"`
}
