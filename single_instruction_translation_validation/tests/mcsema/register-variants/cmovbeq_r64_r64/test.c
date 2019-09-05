void leaf() {
  __asm__("cmovbeq %rcx, %rbx");
  }

void main() {
  leaf();
}