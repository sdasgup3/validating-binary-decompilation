void leaf() {
  __asm__("tzcntq %rcx, %rbx");
  }

void main() {
  leaf();
}