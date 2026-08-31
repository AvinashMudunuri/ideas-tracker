import { useState } from 'react'
import { phases } from './data/curriculum'
import { milestones } from './data/curriculum'
import { useProgress } from './hooks/useProgress'
import { Layout } from './components/Layout'
import { HomeView } from './components/HomeView'
import { PhasesView } from './components/PhasesView'
import { RoutineView } from './components/RoutineView'
import { DramaView } from './components/DramaView'
import { MilestonesView } from './components/MilestonesView'
import type { Tab } from './types'

export default function App() {
  const [tab, setTab] = useState<Tab>('home')
  const {
    progress,
    toggleTask,
    toggleRoutine,
    addPhrase,
    removePhrase,
    resetWeek,
    phaseProgress,
    currentPhase,
    overallProgress,
    daysSinceStart,
    routineDoneThisWeek,
  } = useProgress()

  const renderView = () => {
    switch (tab) {
      case 'home':
        return (
          <HomeView
            currentPhase={currentPhase}
            phasePercent={phaseProgress(currentPhase.id)}
            overallPercent={overallProgress}
            daysSinceStart={daysSinceStart}
            phraseCount={progress.dramaPhrases.length}
            routineDone={routineDoneThisWeek}
            onNavigate={setTab}
          />
        )
      case 'phases':
        return (
          <PhasesView
            phases={phases}
            currentPhaseId={progress.currentPhaseId}
            completedTasks={progress.completedTasks}
            phaseProgress={phaseProgress}
            onToggleTask={toggleTask}
          />
        )
      case 'routine':
        return (
          <RoutineView
            routineChecks={progress.routineChecks}
            onToggle={toggleRoutine}
            onResetWeek={resetWeek}
          />
        )
      case 'drama':
        return (
          <DramaView
            phrases={progress.dramaPhrases}
            onAdd={addPhrase}
            onRemove={removePhrase}
          />
        )
      case 'milestones':
        return (
          <MilestonesView
            milestones={milestones}
            daysSinceStart={daysSinceStart}
            overallPercent={overallProgress}
          />
        )
    }
  }

  return (
    <Layout activeTab={tab} onTabChange={(t) => setTab(t as Tab)}>
      {renderView()}
    </Layout>
  )
}
