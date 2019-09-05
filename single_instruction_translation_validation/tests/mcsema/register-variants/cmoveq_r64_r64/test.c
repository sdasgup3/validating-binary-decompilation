void leaf() {
  __asm__("cmoveq %rcx, %rbx");
  }

void main() {
  leaf();
}