void leaf() {
  __asm__("cmovsq %rcx, %rbx");
  }

void main() {
  leaf();
}