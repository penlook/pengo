package system

import (
	"github.com/stretchr/testify/assert"
	"testing"
)

func TestModel(t *testing.T) {
	assert := assert.New(t)
	assert.Equal("test", "test")
}